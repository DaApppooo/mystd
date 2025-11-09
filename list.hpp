#pragma once
#include "serde.hpp"
#include <algorithm>
#ifndef H_LIST
#define H_LIST
#include <cassert>
#include <experimental/type_traits>
#include "macros.hpp"
#include "types.hpp"

template <class T>
struct View
{
  mutable T* _begin;
  u32 _len;
  static constexpr View<T> range(T* start, u32 len)
  { return {start, len}; }
  static constexpr View<T> from(T* start)
  { return {start, 0U}; }
  View<T> to(T* end) const
  { return {_begin, end-_begin}; }
  static constexpr View<T> empty()
  { return {nullptr, 0U}; }
  constexpr View<T> begin()
  { return *this; }
  constexpr View<T> end()
  { return {_begin+_len, 0U}; }
  constexpr const View<T> cbegin() const
  { return *this; }
  constexpr const View<T> cend() const
  { return {_begin+_len, 0U}; }
  constexpr T& first()
  { assert(_len > 0); return _begin[0]; }
  constexpr T& last()
  { assert(_len > 0); return _begin[_len-1]; }
  constexpr T& first() const
  { assert(_len > 0); return _begin[0]; }
  constexpr T& last() const
  { assert(_len > 0); return _begin[_len-1]; }
  constexpr u32 len() { return _len; }
  constexpr T& operator * () const
  { return *_begin; }
  constexpr T& operator * ()
  { return *_begin; }
  constexpr View<T> operator ++ ()
  { _begin++; _len--; return *this; }
  constexpr View<T> operator ++ (int)
  { const View<T> x = *this; _begin++; _len--; return x; }
  constexpr T& operator[](i32 index) const
  {
    if (index < 0)
    {
      index = _len + index;
    }
    return _begin[index];
  }
};

template <class T>
struct list
{
  using Self = list<T>;
  using Indexed = T;
  using index_t = i32;
  mutable T* _data;
  u32 _len;
  u32 _cap;
  static constexpr Self empty()
  { return {nullptr, 0, 0}; }
  // unintialized buffer
  static constexpr Self alloc(u32 cap)
  { return {alloc<T>(cap), 0, cap}; }
  static constexpr Self filled(T value, u32 size)
  {
    list<T> self;
    self._data = alloc<T>(size);
    self._len = self._cap = size;
    std::fill(self._data, self._data+self._len, value);
    return self;
  }
  static constexpr Self from(const View<T> v)
  {
    list<T> self;
    self._data = alloc<T>(v._len);
    self._len = self._cap = v._len;
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }

  // check if list state is as expected (eg. if allocation failed or not)
  constexpr bool ok() const
  { return _data || !_cap; }
  constexpr bool assert_ok() const
  { assert(ok()); return ok(); }
  constexpr bool is_null() const
  { return _len > _cap; }
  static constexpr Self null()
  { return {._data = nullptr, ._len = 1, ._cap = 0}; }
  constexpr Self& push(const T element)
  {
    _len++;
    if (_len > _cap)
      grow_cap();
    if (!ok())
      return *this;
    assert(_cap >= _len);
    [[assume(_cap >= _len)]];
    std::copy(&element, 1+&element, _data+_len-1);
    return *this;
  }
  constexpr Self& extend(View<T> ext);
  constexpr Self& insert(T element, i32 index);
  constexpr Self& insert(View<T> element, i32 index);
  // Return value is not destroyed !!!
  constexpr T pop();
  constexpr Self& add_cap(u32 size);
  constexpr Self& realloc();
  constexpr void destroy();
  constexpr Own<Self> copy() const;
  constexpr Own<Self> give();
  constexpr Self& rm(i32 index);
  constexpr Self& rm(u32 begin, u32 end);
  constexpr View<T> to_view() const;
  constexpr Self& clear();
  constexpr View<T> slice(u32 length) const;
  constexpr View<T> slice(u32 begin, u32 end) const;
  constexpr T& operator[](const i32 index) const;
  constexpr T& last() const
  { return _data[_len-1]; }
  constexpr T& first() const
  { return _data[0]; }
  constexpr View<T> begin() const
  { return to_view(); }
  constexpr View<T> end() const
  { return to_view().end(); }

  constexpr T* data() const { return _data; }
  constexpr u32 len() const { return _len; }
  constexpr u32 cap() const { return _cap; }
  constexpr Self& cap(u32 new_allocated_size);
  constexpr Self& len(u32 new_size);
  constexpr Self& len(T fill_new_with, u32 new_size);
  constexpr bool is_empty() const
  { return _len == 0; }
  constexpr Self& grow_cap()
  {
    _cap += _cap/2+(_cap<2);
    _data = alloc<T>(_data, _cap);
  }
  constexpr Self& shrink_cap(u32 new_cap)
  {
    assert(new_cap <= _cap);
    _data = alloc<T>(_data, new_cap);
    return *this;
  }

  serde::Result serialize(serde::SerCallback cb, void* data) const;
  static Opt<Self> deserialize(serde::DeserCallback cb, void* data);
};

static_assert(Copiable<list<int>>);
static_assert(Giveable<list<int>>);
static_assert(Destroyable<list<int>>);
static_assert(Indexable<list<int>>);
static_assert(serde::Serializable<list<int>>);
static_assert(serde::Deserializable<list<int>>);

#define self (*this)
#define Self list<T>
#define L template <class T> constexpr

L Self& list<T>::extend(View<T> v)
{
  cap(len() + v.len());
  if (!ok())
    return self;
  std::copy(v.begin(), v.end(), _data + len());
  _len += v._len;
  return self;
}

L Self& list<T>::insert(T e, i32 idx)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  grow_cap();
  if (!ok())
    return self;
  std::copy(begin()+i, end(), begin()+i+1);
  _data[i] = e;
  return self;
}

L Self& list<T>::insert(View<T> e, i32 idx)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  cap(len() + e.len());
  if (!ok())
    return self;
  std::copy(begin()+i, end(), begin()+i+e.len());
  std::copy(e.begin(), e.end(), begin()+i);
  return self;
}

L T list<T>::pop()
{
  _len--;
  return _data[_len];
}

L Self& list<T>::add_cap(u32 size)
{
  cap(cap()+size);
  return self;
}

L Self& list<T>::realloc()
{
  let new_p = alloc<T>(len());
  if (!new_p)
  {
    destroy();
    _cap = 1; // set to !ok()
    return self;
  }
  std::copy(_data, _data+_len, new_p);
  _cap = len();
  free(_data);
  _data = new_p;
  return self;
}

L void list<T>::destroy()
{
  if (_data)
  {
    free(_data);
    _data = nullptr;
    _cap = _len = 0;
  }
}

L Own<Self> list<T>::copy() const
{
  return Self::from(to_view());
}

L Own<Self> list<T>::give()
{
  Self ret = self;
  self = Self::empty();
  return ret;
}

L Self& list<T>::rm(i32 idx)
{
  assert(_len > 0);
  const u32 i = idx < 0 ? len() + idx : idx;
  std::copy(begin()+i+1, end(), begin()+i);
  _len--;
  return self;
}

L Self& list<T>::rm(u32 begin_, u32 end_)
{
  assert(end_ >= begin_);
  if (end_ == begin_)
    return self;
  const u32 count = end_ - begin_;
  assert(_len >= count);
  std::copy(begin()+end_, end(), begin()+begin_);
  _len -= count;
  return self;
}

L View<T> list<T>::to_view() const
{
  return View<T>::range(_data, _len);
}

L Self& list<T>::clear()
{
  _len = 0;
  return self;
}

L View<T> list<T>::slice(u32 length) const
{
  assert(length <= _len);
  return View<T>::range(_data, length);
}

L View<T> list<T>::slice(u32 begin, u32 end) const
{
  assert(end <= _len);
  assert(begin <= end);
  return View<T>::range(_data+begin, end-begin);
}

L T& list<T>::operator[] (const i32 i) const
{
  const u32 index = i < 0 ? len() + i : i;
  assert(ok());
  assert(index >= 0);
  assert(index < _len);
  return _data[index];
}

L Self& list<T>::cap(u32 new_alloc_size)
{
  if (new_alloc_size < _cap)
    return self;
  _data = alloc<T>(_data, new_alloc_size);
  _cap = new_alloc_size;
  return self;
}

L Self& list<T>::len(u32 new_size)
{
  assert(_cap >= new_size);
  _len = new_size;
  return self;
}

L Self& list<T>::len(T filler, u32 new_size)
{
  assert(_cap >= new_size);
  if (new_size > len())
    std::fill(end(), end()+(new_size-len()), filler);
  _len = new_size;
  return self;
}

template <class T>
serde::Result list<T>::serialize(serde::SerCallback cb, void* data) const
{
  const u32 temp = 0;
  if (!ok() || is_null())
    return cb(&temp, sizeof(temp), data);
  if (!cb(&_len, sizeof(_len), data))
    return serde::FAILURE;
  if (_data)
  {
    if (serde::Serializable<T>)
    {
      for (const T& t : *this)
      {
        if (!t.serialize(cb, data))
          return serde::FAILURE;
      }
    }
    else
    {
      if (!cb(_data, sizeof(T)*_len, data))
        return serde::FAILURE;
    }
  }
}

template <class T>
Opt<Self> list<T>::deserialize(serde::DeserCallback cb, void *data)
{
  u32 temp;
  if (!cb(&temp, sizeof(temp), data))
    return Opt<Self>::null();
  mut ret = list<T>::alloc(temp);
  if (!ret.ok())
    return Opt<Self>::null();
  ret.len(temp);
  if (serde::Deserializable<T>)
  {
    Opt<T> deser_result;
    for (T& o : ret)
    {
      deser_result = T::deserialize(cb, data);
      if (!deser_result)
      {
        ret.destroy();
        return Opt<Self>::null();
      }
      o = deser_result.get();
    }
  }
  else if (!cb(ret._data, sizeof(T)*ret._len, data))
  {
    ret.destroy();
    return Opt<Self>::null();
  }
  return Opt<Self>::from(ret);
}

#undef self
#undef Self
#undef L

#endif
