#ifndef H_BUFFER
#define H_BUFFER
#include "allocator.hpp"
#include "traits.hpp"
#include "types.hpp"
#include "macros.hpp"
#include "serde.hpp"
#include "_algo_macros.hpp"
#include <algorithm>
#include <concepts>
#include <cstring>
#include <format>
#include <iterator>
#include <sstream>


trait BufferLike =
   std::random_access_iterator<typename T::iterator>
&& Sized<T>
&& requires { { T::empty() } -> std::same_as<T>; }
&& requires(const T x) { { x.pushable() } -> std::same_as<bool>; }
&& requires(T x, typename T::indexed_type y) { { x.push(y) }; };

template <Indexable It, class BufferUInt>
struct BasicSelection;
template <class T>
struct HeapBuffer;
template <Indexable It>
using Selection = BasicSelection<It, HeapBuffer<u32>>;

template <class T>
struct View
{
  using Self = View<T>;
  using iterator = T*;
  using indexed_type = T;
  using index_t = i32;
  T* _begin;
  u32 _len;
  constexpr View() = default;
  constexpr View(const View<T>&) = default;
  constexpr View(View<T>&&) = default;
  constexpr Self& operator = (const Self&) = default;
  constexpr View(T* p, u32 l) : _begin(p), _len(l) {}
  constexpr View(T* p) : _begin(p) {}
  template <class It>
    requires Sized<T> && std::random_access_iterator<typename It::iterator>
  constexpr View(const It& it)
    : _begin(&*(it.begin())), _len(it.len()) {}

  static constexpr View<T> range(T* start, u32 len)
  { return {start, len}; }
  static constexpr View<T> cstr(T* start) = delete;
  static constexpr View<T> from(T* start)
  { return {start, 0U}; }
  View<T> to(T* end) const
  { return {_begin, u32(end-_begin)}; }
  static constexpr View<T> empty()
  { return {nullptr, 0U}; }
  static constexpr View<T> null()
  { return empty(); }
  constexpr View<typename std::remove_const<T>::type> to_mut() const
  { return { (typename std::remove_const<T>::type*)_begin, _len }; }
  constexpr View<const T> to_const() const
  { return { (const T*)_begin, _len }; }
  constexpr bool is_null() const
  { return !_begin; }
  constexpr T* begin()
  { return _begin; }
  constexpr T* end()
  { return _begin+_len; }
  constexpr const T* begin() const
  { return _begin; }
  constexpr const T* end() const
  { return _begin+_len; }
  constexpr T& first()
  { need(_len > 0); return _begin[0]; }
  constexpr T& last()
  { need(_len > 0); return _begin[_len-1]; }
  constexpr T& first() const
  { need(_len > 0); return _begin[0]; }
  constexpr T& last() const
  { need(_len > 0); return _begin[_len-1]; }
  constexpr u32 len() const { return _len; }
  constexpr T& operator * () const
  { return *_begin; }
  constexpr T& operator * ()
  { return *_begin; }
  constexpr View<T> operator ++ ()
  { _begin++; _len--; return *this; }
  constexpr bool operator == (const View<T> o) const
  {
    if (o.len() != len())
      return false;
    const T* a = _begin;
    const T* b = o._begin;
    for (u32 i = 0; i < _len; i++)
    { if (!(*a == *b)) return false; ++a; ++b; }
    return true;
  }
  constexpr T& operator[](i32 index) const
  {
    if (index < 0)
    {
      index = _len + index;
    }
    return _begin[index];
  }
  constexpr View<T> operator[](u32 start, u32 end) const
  { return View<T>::range(_begin+start, end-start); }
  constexpr View<T>& shorten(u32 diff)
  { _len -= diff; return *this; }

  // serde
  serde::Result serialize(serde::SerCallback cb, void* data) const;

  // defined in algo.hpp, all methods are in-place
  _ALGO_INDEXABLE_IMPL

  // defined in iters.hpp
  
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  constexpr Selection<const Self> sel() const;
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  constexpr Selection<Self> sel();
};

template <>
constexpr View<const char> View<const char>::cstr(const char* s)
{ return View<const char>::range(s, strlen(s)); }
template <>
constexpr View<char> View<char>::cstr(char* s)
{ return View<char>::range(s, strlen(s)); }

// A buffer allocated on the stack
template <class T, u32 _cap>
struct StackBuffer
{
  using Self = StackBuffer<T, _cap>;
  using iterator = T*;
  using indexed_type = T;
  using index_t = i32;
  T _data[_cap];
  u32 _len;
  static constexpr Self init()
  { return {{}, 0}; }
  static constexpr Self filled(T value)
  {
    Self self;
    self._data = ::alloc<T>(_cap);
    self._len = _cap;
    std::fill(self._data, self._data+self._len, value);
    return self;
  }
  static constexpr Self from(const View<const T> v)
  {
    need(v._len <= _cap);
    Self self;
    self._data = ::alloc<T>(v._len);
    self._len = v._len;
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
    requires Sized<It_T>
  static constexpr Self from(const It_T v)
  {
    Self self;
    self._data = ::alloc<T>(v.len());
    self._len = v.len();
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
  static constexpr Self from(const It_T v)
  {
    Self self;
    for (const typename It_T::iterator::value_type obj : v)
    {
      self.push(obj);
    }
    return self;
  }
  constexpr bool is_null() const
  { return _len > _cap; }
  static constexpr Self null()
  { return Self{{}, _cap+1}; }
  
  constexpr Self& push(const T& obj)
  {
    need(_len < _cap);
    std::copy(&obj, 1+&obj, _data+(_len++));
    return *this;
  }
  constexpr bool pushable() const
  { return _len < _cap; }

  // Return value isn't destroyed
  constexpr T& pop()
  { need(_len > 0); return _data[_len--]; }

  constexpr Self& extend(const View<const T>& ext)
  {
    need(_len + ext._len <= _cap);
    std::copy(ext.begin(), ext.end(), _data+_len);
    _len += ext._len;
    return *this;
  }
  constexpr Self& insert(const T& element, i32 index)
  {
    const u32 i = std::clamp(index < 0 ? _len+index : index, 0U, _len);
    need(_len < _cap);
    std::copy(_data+i, _data+_len, _data+i+1);
    std::copy(&element, 1+&element, _data+i);
    ++_len;
    return *this;
  }
  constexpr Self& insert(const View<const T>& v, i32 index)
  {
    const u32 i = std::clamp(index < 0 ? _len+index : index, 0U, _len);
    need(_len + v._len <= _cap);
    std::copy(_data+i, _data+_len, _data+i+v._len);
    std::copy(v.begin(), v.end(), _data+_len);
    _len += v._len;
    return *this;
  }
  constexpr Own<Self> copy() const
  {
    Self r;
    std::copy(_data, _data+_len, r._data);
    r._len = _len;
    return r;
  }
  constexpr Self& rm(i32 index)
  {
    const u32 i = index < 0 ? _len+index : index;
    need(i < _len);
    need(i >= 0);
    need(_len > 0);
    std::copy(_data+i+1, _data+_len, _data+i);
    return *this;
  }
  constexpr Self& rm(u32 begin, u32 end)
  {
    need(end <= _len);
    need(begin <= end);
    need(_len >= end - begin);
    std::copy(_data+end, _data+_len, _data+begin);
    return *this;
  }
  constexpr View<T> to_view() const
  { return View<T>::range(_data, _len); }
  constexpr Self& clear()
  { _len = 0; return *this; }
  constexpr View<T> slice(u32 length) const
  { return View<T>::range(_data, length); }
  constexpr View<T> slice(u32 begin, u32 end) const
  { return View<T>::from(_data+begin).to(_data+end); }
  constexpr T& operator[](const i32 index) const
  {
    const u32 i = index < 0 ? _len+index : index;
    need(i < _len);
    need(i >= 0);
    return _data[index];
  }
  constexpr T& last() const
  { return _data[_len-1]; }
  constexpr T& first() const
  { return _data[0]; }
  constexpr T* begin() const
  { return to_view().begin(); }
  constexpr T* end() const
  { return to_view().end(); }

  constexpr T* data() const { return _data; }
  constexpr u32 len() const { return _len; }
  constexpr u32 cap() const { return _cap; }
  constexpr Self& len(u32 new_len)
  { need(new_len < _cap); _len = new_len; return *this; }

  constexpr bool is_empty() const
  { return _len == 0; }
  inline serde::Result serialize(serde::SerCallback cb, void* data) const
  { return to_view().serialize(cb, data); }
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  static Opt<Self_> deserialize(serde::DeserCallback cb, void* data);

  // defined in algo.hpp, all methods are in-place
  _ALGO_INDEXABLE_IMPL
};

// A buffer allocated on the heap
template <class T>
struct HeapBuffer
{
  using Self = HeapBuffer<T>;
  using iterator = T*;
  using indexed_type = T;
  using index_t = i32;
  mutable T* _data;
  u32 _len;
  u32 _cap;
  static constexpr Self empty()
  { return {nullptr, 0, 0}; }
  // unintialized buffer
  static constexpr Self alloc(u32 cap)
  { return {::alloc<T>(cap), 0, cap}; }
  static constexpr Self filled(const T& value, u32 size)
  {
    Self self;
    self._data = ::alloc<T>(size);
    self._len = self._cap = size;
    std::fill(self._data, self._data+self._len, value);
    return self;
  }
  static constexpr Self from(const View<const T>& v)
  {
    Self self;
    self._data = ::alloc<T>(v._len);
    self._len = self._cap = v._len;
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
    requires Sized<It_T>
  static constexpr Self from(const It_T& v)
  {
    Self self;
    self._data = ::alloc<T>(v.len());
    self._cap = self._len = v.len();
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
  static constexpr Self from(const It_T& v)
  {
    Self self;
    for (const typename It_T::iterator::value_type obj : v)
      self.push(obj);
    return self;
  }

  // check if List state is as expected (eg. if allocation failed or not)
  constexpr bool ok() const
  { return _data || !_cap; }
  constexpr bool need_ok() const
  { need(ok()); return ok(); }
  constexpr bool is_null() const
  { return _len > _cap; }
  static constexpr Self null()
  { return {._data = nullptr, ._len = 1, ._cap = 0}; }
  constexpr Self& push(const T& element)
  {
    _len++;
    if (_len > _cap)
      grow_cap();
    if (!ok())
      return *this;
    need(_cap >= _len);
    [[assume(_cap >= _len)]];
    std::copy(&element, 1+&element, _data+_len-1);
    return *this;
  }
  constexpr Self& extend(const View<const T>& ext);
  constexpr Self& insert(const T& element, i32 index);
  constexpr Self& insert(const View<const T>& element, i32 index);
  // Return value is not destroyed !!!
  constexpr T pop();
  constexpr Self& add_cap(u32 size);
  constexpr Self& realloc();
  constexpr void destroy();
  constexpr void destroy() const;
  constexpr Own<Self> copy() const;
  constexpr Own<Self> drop();
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
  constexpr T* begin() const
  { return to_view().begin(); }
  constexpr T* end() const
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
    _data = ::alloc<T>(_data, _cap);
    return *this;
  }
  constexpr Self& shrink_cap(u32 new_cap)
  {
    need(new_cap <= _cap);
    _data = ::alloc<T>(_data, new_cap);
    return *this;
  }

  inline serde::Result serialize(serde::SerCallback cb, void* data) const
  { return to_view().serialize(cb, data); }
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  static Opt<Self_> deserialize(serde::DeserCallback cb, void* data);

  // defined in iters.hpp
  
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  constexpr Selection<const Self> sel() const;
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  constexpr Selection<Self> sel();
  // defined in algo.hpp, all methods are in-place
  _ALGO_INDEXABLE_IMPL
};

template <class T, Allocator<T> allocator>
struct CustomBuffer : HeapBuffer<T>
{
  using Self = CustomBuffer<T, allocator>;

  constexpr Self& grow_cap() override
  {
    this->_cap += this->_cap/2+(this->_cap<2);
    this->_data = allocator::alloc(this->_data, this->_cap);
    return *this;
  }
  constexpr Self& cap(u32 new_alloc_size) override
  {
    if (new_alloc_size < this->_cap)
      return *this;
    this->_data = allocator::alloc(this->_data, new_alloc_size);
    this->_cap = new_alloc_size;
    return *this;
  }
  constexpr Self& realloc() override
  {
    let new_p = allocator::alloc(this->len());
    if (!new_p)
    {
      destroy();
      this->_cap = 1; // set to !ok()
      return *this;
    }
    std::copy(this->_data, this->_data+this->_len, new_p);
    this->_cap = this->len();
    allocator::free(this->_data);
    this->_data = new_p;
    return *this;
  }

  constexpr void destroy() override
  {
    if (this->_data)
    {
      allocator::free(this->_data);
      this->_data = nullptr;
      this->_cap = this->_len = 0;
    }
  }
  constexpr void destroy() const override
  {
    if (this->_data)
    {
      allocator::free(this->_data);
      this->_data = nullptr;
    }
  }
};

#define self (*this)
#define Self HeapBuffer<T>
#define L template <class T> constexpr

L Self& HeapBuffer<T>::extend(const View<const T>& v)
{
  cap(len() + v.len());
  if (!ok())
    return self;
  std::copy(v.begin(), v.end(), _data + len());
  _len += v._len;
  return self;
}

L Self& HeapBuffer<T>::insert(const T& e, i32 idx)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  grow_cap();
  if (!ok())
    return self;
  std::copy(begin()+i, end(), begin()+i+1);
  _data[i] = e;
  return self;
}

L Self& HeapBuffer<T>::insert(const View<const T>& e, i32 idx)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  cap(len() + e.len());
  if (!ok())
    return self;
  std::copy(begin()+i, end(), begin()+i+e.len());
  std::copy(e.begin(), e.end(), begin()+i);
  return self;
}

L T HeapBuffer<T>::pop()
{
  _len--;
  return _data[_len];
}

L Self& HeapBuffer<T>::add_cap(u32 size)
{
  cap(cap()+size);
  return self;
}

L Self& HeapBuffer<T>::realloc()
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

L void HeapBuffer<T>::destroy()
{
  if (_data)
  {
    free(_data);
    _data = nullptr;
    _cap = _len = 0;
  }
}
L void HeapBuffer<T>::destroy() const
{
  if (_data)
  {
    free(_data);
    _data = nullptr;
  }
}

L Own<Self> HeapBuffer<T>::copy() const
{
  return Self::from(to_view());
}

L Own<Self> HeapBuffer<T>::drop()
{
  Self ret = self;
  self = Self::empty();
  return ret;
}

L Self& HeapBuffer<T>::rm(i32 idx)
{
  need(_len > 0);
  const u32 i = idx < 0 ? len() + idx : idx;
  std::copy(begin()+i+1, end(), begin()+i);
  _len--;
  return self;
}

L Self& HeapBuffer<T>::rm(u32 begin_, u32 end_)
{
  need(end_ >= begin_);
  if (end_ == begin_)
    return self;
  const u32 count = end_ - begin_;
  need(_len >= count);
  std::copy(begin()+end_, end(), begin()+begin_);
  _len -= count;
  return self;
}

L View<T> HeapBuffer<T>::to_view() const
{
  return View<T>::range(_data, _len);
}

L Self& HeapBuffer<T>::clear()
{
  _len = 0;
  return self;
}

L View<T> HeapBuffer<T>::slice(u32 length) const
{
  need(length <= _len);
  return View<T>::range(_data, length);
}

L View<T> HeapBuffer<T>::slice(u32 begin, u32 end) const
{
  need(end <= _len);
  need(begin <= end);
  return View<T>::range(_data+begin, end-begin);
}

L T& HeapBuffer<T>::operator[] (const i32 i) const
{
  const u32 index = i < 0 ? len() + i : i;
  need(ok());
  need(index >= 0);
  need(index < _len);
  return _data[index];
}

L Self& HeapBuffer<T>::cap(u32 new_alloc_size)
{
  if (new_alloc_size < _cap)
    return self;
  _data = ::alloc<T>(_data, new_alloc_size);
  _cap = new_alloc_size;
  return self;
}

L Self& HeapBuffer<T>::len(u32 new_size)
{
  need(_cap >= new_size);
  _len = new_size;
  return self;
}

L Self& HeapBuffer<T>::len(T filler, u32 new_size)
{
  need(_cap >= new_size);
  if (new_size > len())
    std::fill(end(), end()+(new_size-len()), filler);
  _len = new_size;
  return self;
}

// serde stuff
template <class T>
serde::Result View<T>::serialize(serde::SerCallback cb, void* data) const
{
  const u32 temp = 0;
  if (is_null())
    return cb(&temp, sizeof(temp), data);
  if (cb(&_len, sizeof(_len), data))
    return serde::FAILURE;
  if (_begin)
  {
    if constexpr(serde::Serializable<T>)
    {
      for (const T& t : *this)
      {
        if (t.serialize(cb, data))
          return serde::FAILURE;
      }
    }
    else
    {
      if (cb(_begin, sizeof(T)*_len, data))
        return serde::FAILURE;
    }
  }
  return serde::SUCCESS;
}

template <class T>
template <class Self_>
  requires std::same_as<Self_, Self>
Opt<Self_> HeapBuffer<T>::deserialize(serde::DeserCallback cb, void *data)
{
  u32 temp;
  if (cb(&temp, sizeof(temp), data))
    return Opt<Self>::null();
  mut ret = HeapBuffer<T>::alloc(temp);
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
  else if (cb(ret._data, sizeof(T)*ret._len, data))
  {
    ret.destroy();
    return Opt<Self>::null();
  }
  return Opt<Self>::from(ret);
}

template <class T, u32 _cap>
template <class Self_>
  requires std::same_as<Self_, StackBuffer<T, _cap>>
Opt<Self_> StackBuffer<T, _cap>::deserialize(
  serde::DeserCallback cb,
  void *data
) {
  u32 temp;
  if (cb(&temp, sizeof(temp), data))
    return Opt<Self>::null();
  if (temp > _cap)
    return StackBuffer<T, _cap>::null();
  mut ret = StackBuffer<T, _cap>::init();
  ret.len(temp);
  if (serde::Deserializable<T>)
  {
    Opt<T> deser_result;
    for (T& o : ret)
    {
      deser_result = T::deserialize(cb, data);
      if (!deser_result)
        return StackBuffer<T, _cap>::null();
      o = deser_result.get();
    }
  }
  else if (cb(ret._data, sizeof(T)*ret._len, data))
  {
    return StackBuffer<T, _cap>::null();
  }
  return ret;
}

// formatting stuff
template <class T>
struct std::formatter<const View<const T>, char>
{
  template <class ParseContext>
  constexpr ParseContext::iterator parse(ParseContext& ctx)
  {
    return ctx.end();
  }

  template<class FmtContext>
  constexpr FmtContext::iterator format(HeapBuffer<T> l, FmtContext& ctx) const
  {
    std::ostringstream out;
    if (l.len() == 0)
    {
      out << "[]";
    }
    else
    {
      out << '[' << std::format("{}", l[0]);
      for (const T& o : l.slice(1,l.len()))
      {
        out << ", " << std::format("{}", o);
      }
      out << ']';
    }
    return std::ranges::copy(std::move(out).str(), ctx.out()).out;
  }
};

#undef self
#undef Self
#undef L

#endif

