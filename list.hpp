#pragma once
#include "deser.hpp"
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
  constexpr Self& push(const T element)
  {
    _len++;
    if (_len > _cap)
      grow_cap();
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
  constexpr Self copy() const;
  constexpr Self give();
  constexpr Self& rm(i32 index);
  constexpr Self& rm(u32 begin, u32 end);
  constexpr View<T> to_view() const;
  constexpr Self& clear();
  constexpr View<T> slice(u32 length);
  constexpr View<T> slice(u32 begin, u32 end);
  constexpr T& operator[](const i32 index) const;
  constexpr T& last() const
  { return _data[_len-1]; }
  constexpr T& first() const
  { return _data[0]; }
  constexpr View<T> begin() const
  { return to_view(); }
  constexpr View<T> end() const
  { return to_view().end(); }

  constexpr T* data() const;
  constexpr u32 len() const;
  constexpr u32 cap() const;
  constexpr Self& cap(u32 new_allocated_size);
  constexpr Self& len(u32 new_size) const;
  constexpr Self& len(T fill_new_with, u32 new_size) const;
  constexpr bool is_empty() const;
  constexpr Self& grow_cap()
  {
    _cap += _cap/2+(_cap<2);
    _data = alloc<T>(_data, _cap);
    if (!ok())
      return *this;
  }

  serde::Result serialize(serde::SerCallback cb, void* data);
  static Opt<Self> deserialize(serde::SerCallback cb, void* data);
};

static_assert(Copiable<list<int>>);
static_assert(Giveable<list<int>>);
static_assert(Destroyable<list<int>>);
static_assert(Indexable<list<int>>);
static_assert(serde::Serializable<list<int>>);

#define self (*this)
#define Self list<T>
#define L template <class T> constexpr

L Self& list<T>::extend(View<T> v)
{
  cap(len() + v.len());
  std::copy(v.begin(), v.end(), _data + len());
  _len += v._len;
  return self;
}

L Self& list<T>::insert(T e, i32 idx)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  grow_cap();
  std::copy(begin()+i, end(), begin()+i+1);
  _data[i] = e;
  return self;
}

L Self& list<T>::insert(View<T> e, i32 idx)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  cap(len() + e.len());
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
  std::copy(_data, _data+_len, new_p);
  _
}

#undef self
#undef Self
#undef L

#endif
