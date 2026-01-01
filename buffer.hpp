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
#include <memory>
#include <vector>
#include "format.hpp"

trait BufferLike =
   std::random_access_iterator<typename T::iterator>
&& Sized<T>
&& requires { { T::empty() } -> std::same_as<T>; }
&& requires(const T x) { { x.pushable() } -> std::same_as<bool>; }
&& requires(T x, typename T::indexed_type y) { { x.push(y) }; };

template <class It, class BufferUInt>
struct BasicSelection;
template <class Self, class T, Allocator<T> allocator>
struct CustomBuffer;
template <class T>
struct HeapBuffer;
template <class It>
using Selection = BasicSelection<It, HeapBuffer<u32>>;

// No owned pointer, just a reference.
// Use Span instead if the pointer is owned.
template <class T>
struct View
{
  using Self = View<T>;
  using iterator = T*;
  using indexed_type = T;
  using index_t = i32;
  Ref<T*> _begin;
  u32 _len;
  macro View() = default;
  macro View(const View<T>&) = default;
  macro View(View<T>&&) = default;
  macro Self& operator = (const Self&) = default;
  macro View(T* p, u32 l) : _begin(p), _len(l) {}
  macro View(T* p) : _begin(p) {}
  template <class It>
    requires Sized<T> && std::random_access_iterator<typename It::iterator>
  macro View(const It& it)
    : _begin(&*(it.begin())), _len(it.len()) {}

  template <class U>
  static macro View<T> wrap(U& u)
  { return {reinterpret_cast<T*>(&u), 1}; }
  static macro View<T> range(Ref<T*> start, u32 len)
  { return {start, len}; }
  static macro View<T> cstr(Ref<T*> start) = delete;
  static macro View<T> from(Ref<T*> start)
  { return {start, 0U}; }
  [[nodiscard]]
  macro View<T> to(T* end) const
  { return {_begin, u32(end-_begin)}; }
  static macro View<T> empty()
  { return {nullptr, 0U}; }
  static macro View<T> null()
  { return empty(); }

  template <class U>
  macro U to() const;

  // View is NOT droppable !!! (that can cause serious issues)
  macro void drop_inner() const
  {
    if macro(Dropable<T>)
      for (T& t : *this)
        t.drop();
  }
  macro View<typename std::remove_const<T>::type> to_mut() const
  { return { (typename std::remove_const<T>::type*)_begin, _len }; }
  macro View<const T> to_const() const
  { return { (const T*)_begin, _len }; }
  template <class U>
  macro View<U> as() const
  { return { static_cast<U*>(_begin), _len*sizeof(T)/sizeof(U) }; }  
  macro bool is_null() const
  { return !_begin; }
  macro T* begin()
  { return _begin; }
  macro T* end()
  { return _begin+_len; }
  macro const T* begin() const
  { return _begin; }
  macro const T* end() const
  { return _begin+_len; }
  macro const T* cbegin() const
  { return _begin; }
  macro const T* cend() const
  { return _begin+_len; }
  macro T& first()
  { need(_len > 0); return _begin[0]; }
  macro T& last()
  { need(_len > 0); return _begin[_len-1]; }
  macro T& first() const
  { need(_len > 0); return _begin[0]; }
  macro T& last() const
  { need(_len > 0); return _begin[_len-1]; }
  macro const u32& len() const { return _len; }
  macro u32& len() { return _len; }
  macro Self& len(u32 l) { _len = l; return *this; }
  macro T& operator * () const
  { return *_begin; }
  macro T& operator * ()
  { return *_begin; }
  macro View<T> operator ++ ()
  { _begin++; _len--; return *this; }
  macro bool operator == (const View<T> o) const
  {
    if (o.len() != len())
      return false;
    const T* a = _begin;
    const T* b = o._begin;
    for (u32 i = 0; i < _len; i++)
    { if (!(*a == *b)) return false; ++a; ++b; }
    return true;
  }
  macro const T& operator[](index_t index) const
  { return _begin[index < 0 ? _len + index : index]; }
  macro T& operator[](index_t index)
  { return _begin[index < 0 ? _len + index : index]; }
  macro View<T> operator[](u32 start, u32 end) const
  { return View<T>::range(_begin+start, end-start); }
  macro View<T> shortened(u32 diff) const
  { return {_begin+diff, _len-diff}; }
  macro View<T> shortened(u32 begin_off, u32 end_off) const
  { return {_begin+begin_off, _len-begin_off-end_off}; }
  macro HeapBuffer<View<T>> split(const T& item) const;
  macro HeapBuffer<T> alloc() const;
  macro operator FormatView<char> ()
    requires std::same_as<T, char>
  { return { _begin, _begin+_len }; }
  macro operator FormatView<char16_t> ()
    requires std::same_as<T, char16_t>
  { return { _begin, _begin+_len }; }
  macro operator FormatView<char32_t> ()
    requires std::same_as<T, char32_t>
  { return { _begin, _begin+_len }; }
  macro operator FormatView<wchar_t> ()
    requires std::same_as<T, wchar_t>
  { return { _begin, _begin+_len }; }
  macro FormatView<char, CAllocator<char>> format() const
    requires Formattable<T>;
  macro FormatView<char, CAllocator<char>> debug() const;

  // serde
  serde::Result serialize(serde::SerCallback cb, void* data) const;

  // defined in iters.hpp
  
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  macro Selection<const Self> sel() const;
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  macro Selection<Self> sel();
};

template <>
macro View<const char> View<const char>::cstr(const char* s)
{ return View<const char>::range(s, strlen(s)); }
template <>
macro View<char> View<char>::cstr(char* s)
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
  static macro Self init()
  { return {{}, 0}; }
  static macro Self filled(T value)
  {
    Self self;
    self._len = _cap;
    std::fill(self._data, self._data+self._len, value);
    return self;
  }
  static macro Self from(const View<const T> v)
  {
    need(v._len <= _cap);
    Self self;
    self._len = v._len;
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
    requires Sized<It_T>
  static macro Self from(const It_T v)
  {
    Self self;
    self._len = v.len();
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
  static macro Self from(const It_T v)
  {
    Self self;
    for (const typename It_T::iterator::value_type obj : v)
    {
      self.push(obj);
    }
    return self;
  }
  macro bool is_null() const
  { return _len > _cap; }
  static macro Self null()
  { return Self{{}, _cap+1}; }
  
  macro Self& push(const T& obj)
  {
    need(_len < _cap);
    std::copy(&obj, 1+&obj, _data+(_len++));
    return *this;
  }
  macro bool pushable() const
  { return _len < _cap; }

  // Return value isn't destroyed
  macro T& pop()
  { need(_len > 0); return _data[_len--]; }

  macro Self& extend(const View<const T>& ext)
  {
    need(_len + ext._len <= _cap);
    std::copy(ext.begin(), ext.end(), _data+_len);
    _len += ext._len;
    return *this;
  }
  macro Self& insert(const T& element, i32 index)
  {
    const u32 i = std::clamp(index < 0 ? _len+index : index, 0U, _len);
    need(_len < _cap);
    std::copy(_data+i, _data+_len, _data+i+1);
    std::copy(&element, 1+&element, _data+i);
    ++_len;
    return *this;
  }
  macro Self& insert(const View<const T>& v, i32 index)
  {
    const u32 i = std::clamp(index < 0 ? _len+index : index, 0U, _len);
    need(_len + v._len <= _cap);
    std::copy(_data+i, _data+_len, _data+i+v._len);
    std::copy(v.begin(), v.end(), _data+_len);
    _len += v._len;
    return *this;
  }
  macro Own<Self> copy() const
  {
    Self r;
    std::copy(_data, _data+_len, r._data);
    r._len = _len;
    return r;
  }
  macro Self& rm(i32 index)
  {
    const u32 i = index < 0 ? _len+index : index;
    need(i < _len);
    need(i >= 0);
    need(_len > 0);
    std::copy(_data+i+1, _data+_len, _data+i);
    return *this;
  }
  macro Self& rm(u32 begin, u32 end)
  {
    need(end <= _len);
    need(begin <= end);
    need(_len >= end - begin);
    std::copy(_data+end, _data+_len, _data+begin);
    return *this;
  }
  macro View<const T> to_view() const
  { return View<const T>::range(_data, _len); }
  macro View<T> to_view()
  { return View<T>::range(_data, _len); }
  macro Self& clear()
  { _len = 0; return *this; }
  macro View<const T> slice(u32 length) const
  { return View<const T>::range(_data, length); }
  macro View<const T> slice(u32 begin, u32 end) const
  { return View<const T>::from(_data+begin).to(_data+end); }
  macro View<T> slice(u32 length)
  { return View<T>::range(_data, length); }
  macro View<T> slice(u32 begin, u32 end)
  { return View<T>::from(_data+begin).to(_data+end); }
  macro const T& operator[](const i32 index) const
  {
    const u32 i = index < 0 ? _len+index : index;
    need(i < _len);
    need(i >= 0);
    return _data[index];
  }
  macro T& operator[](const i32 index)
  {
    const u32 i = index < 0 ? _len+index : index;
    need(i < _len);
    need(i >= 0);
    return _data[index];
  }
  macro const T& operator[](const u32 i) const
  {
    need(i < _len);
    need(i >= 0);
    return _data[index];
  }
  macro T& operator[](const u32 i)
  {
    need(i < _len);
    need(i >= 0);
    return _data[index];
  }
  macro View<const T> operator [] (const u32 a, const u32 b) const
  { return View<const T>::from(_data+a).to(_data+b); }
  macro View<T> operator [] (const u32 a, const u32 b)
  { return View<T>::from(_data+a).to(_data+b); }
  macro T& last() const
  { return _data[_len-1]; }
  macro T& first() const
  { return _data[0]; }
  macro const T* begin() const
  { return to_view().begin(); }
  macro const T* end() const
  { return to_view().end(); }
  macro T* begin()
  { return to_view().begin(); }
  macro T* end()
  { return to_view().end(); }
  macro void drop() const
    requires Dropable<T>
  { to_view().drop(); }

  macro T* data() const { return _data; }
  macro const u32& len() const { return _len; }
  macro u32& len() { return _len; }
  macro u32 cap() const { return _cap; }
  macro Self& len(u32 new_len)
  { need(new_len < _cap); _len = new_len; return *this; }

  macro bool is_empty() const
  { return _len == 0; }
  inline serde::Result serialize(serde::SerCallback cb, void* data) const
  { return to_view().serialize(cb, data); }
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  static Opt<Self_> deserialize(serde::DeserCallback cb, void* data);
};

// A buffer allocated on the heap
template <class Self, class T, Allocator<T> allocator = CAllocator<T>>
struct CustomBuffer
{
  using iterator = T*;
  using indexed_type = T;
  using index_t = i32;
  mutable T* _data;
  u32 _len;
  u32 _cap;
  static macro Self init()
  { return {nullptr, 0, 0}; }
  // unintialized buffer
  static macro Self alloc(u32 cap)
  { return {allocator::alloc(cap), 0, cap}; }
  template <class StdCppAllocator>
  static macro Self steal(std::vector<T, StdCppAllocator>& std_cpp_vec)
  {
    Self self;
    self._data = std_cpp_vec.data();
    self._len = static_cast<u32>(std_cpp_vec.size());
    self._cap = static_cast<u32>(std_cpp_vec.capacity());
    std::construct_at(&std_cpp_vec);
    return self;
  }
  static macro Self filled(const T& value, u32 size)
  {
    Self self;
    self._data = allocator::alloc(size);
    self._len = self._cap = size;
    std::fill(self._data, self._data+self._len, value);
    return self;
  }
  static macro Self from(const View<const T>& v)
  {
    Self self;
    self._data = allocator::alloc(v._len);
    self._len = self._cap = v._len;
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
    requires Sized<It_T>
  static macro Self from(const It_T& v)
  {
    Self self;
    self._data = allocator::alloc(v.len());
    self._cap = self._len = v.len();
    std::copy(v.begin(), v.end(), self._data);
    return self;
  }
  template <Iterable It_T>
  static macro Self from(const It_T& v)
  {
    Self self;
    for (const typename It_T::iterator::value_type obj : v)
      self.push(obj);
    return self;
  }

  // check if List state is as expected (eg. if allocation failed or not)
  macro bool ok() const
  { return _data || !_cap; }
  macro bool need_ok() const
  { need(ok()); return ok(); }
  macro bool is_null() const
  { return _len > _cap; }
  static macro Self null()
  { return {._data = nullptr, ._len = 1, ._cap = 0}; }
  template <class... Args>
  macro Self& push(Args... args)
  {
    _len++;
    if (_len > _cap)
      grow_cap();
    if (!ok()) [[unlikely]]
      return as_self();
    need(_cap >= _len);
    [[assume(_cap >= _len)]];
    std::construct_at(_data+_len-1, args...);
    return as_self();
  }
  macro Self& extend(const View<const T>& ext);
  // self is moved
  template <class U>
    requires (sizeof(T) % sizeof(U) == 0)
  macro Own<CustomBuffer<U, allocator>> content_as()
  {
    CustomBuffer<U, allocator> ret = {
      ._data=reinterpret_cast<U*>(_data),
      ._len=_len*sizeof(T)/sizeof(U),
      ._cap=_cap*sizeof(T)/sizeof(U)
    };
    *this = Self::init();
    return ret;
  }
  template <class... Args>
  macro Self& insert(i32 index, Args... args);
  macro Self& insert(i32 index, const View<const T>& element);
  // Return value is not destroyed !!!
  macro Own<T> pop();
  macro Self& add_cap(u32 size);
  macro Self& realloc();
  macro void drop();
  macro void drop() const;
  macro Own<Self> copy() const;
  macro Own<Self> move();
  macro Self& rm(i32 index);
  macro Self& rm(u32 begin, u32 end);
  macro View<T> to_view() const;
  macro Self& clear();
  macro View<const T> slice(u32 length) const;
  macro View<const T> slice(u32 begin, u32 end) const;
  macro View<T> slice(u32 length);
  macro View<T> slice(u32 begin, u32 end);
  macro const T& operator[](const i32 index) const;
  macro T& operator[](const i32 index);
  macro const T& operator[](const u32 index) const;
  macro T& operator[](const u32 index);
  macro View<const T> operator[](const u32 a, const u32 b) const
  { return slice(a, b); }
  macro View<T> operator[](const u32 a, const u32 b)
  { return slice(a, b); }
  macro T& last() const
  { return _data[_len-1]; }
  macro T& first() const
  { return _data[0]; }
  macro T* begin() const
  { return to_view().begin(); }
  macro T* end() const
  { return to_view().end(); }
  macro Self& as_self() // TODO: use start_lifetime_as to avoid UB in C++26
  { return *reinterpret_cast<Self*>(this); }
  macro const Self& as_self() const
  { return *reinterpret_cast<Self*>(this); }

  macro T* data() const { return _data; }
  macro u32 len() const { return _len; }
  macro u32 cap() const { return _cap; }
  macro Self& cap(u32 new_allocated_size);
  macro Self& len(u32 new_size);
  macro Self& len(Ref<T> fill_new_with, u32 new_size)
    requires Copiable<T>;
  macro Self& len(Ref<T>* fill_new_with, u32 new_size)
    requires Copiable<T>;
  macro bool is_empty() const
  { return _len == 0; }
  macro u32 grow_cap()
  {
    const u32 grow_size = _cap/2+(_cap<2);
    _cap += grow_size;
    _data = allocator::alloc(_data, _cap);
    return grow_size;
  }
  macro Self& shrink_cap(u32 new_cap)
  {
    need(new_cap <= _cap);
    _data = allocator::alloc(_data, new_cap);
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
  macro Selection<const Self> sel() const;
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  macro Selection<Self> sel();
};

#define self (*this)
#define L template <class Self, class T, Allocator<T> allocator> macro

L Self& CustomBuffer<Self, T, allocator>::extend(const View<const T>& v)
{
  cap(len() + v.len());
  if (!ok())
    return as_self();
  std::copy(v.begin(), v.end(), _data + len());
  _len += v._len;
  return as_self();
}

template <class Self, class T, Allocator<T> allocator>
template <class... Args>
macro Self& CustomBuffer<Self, T, allocator>::insert(i32 idx, Args... args)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  grow_cap();
  if (!ok())
    return self;
  std::copy(begin()+i, end(), begin()+i+1);
  std::construct_at(_data+i, args...);
  return self;
}

L Self& CustomBuffer<Self, T, allocator>::insert(i32 idx, const View<const T>& e)
{
  const u32 i = idx < 0 ? len() + idx : idx;
  cap(len() + e.len());
  if (!ok())
    return self;
  std::copy(begin()+i, end(), begin()+i+e.len());
  std::copy(e.begin(), e.end(), begin()+i);
  return self;
}

L T CustomBuffer<Self, T, allocator>::pop()
{
  _len--;
  return _data[_len];
}

L Self& CustomBuffer<Self, T, allocator>::add_cap(u32 size)
{
  cap(cap()+size);
  return self;
}

L Self& CustomBuffer<Self, T, allocator>::realloc()
{
  let new_p = alloc<T>(len());
  if (!new_p)
  {
    drop();
    _cap = 1; // set to !ok()
    return self;
  }
  std::copy(_data, _data+_len, new_p);
  _cap = len();
  allocator::free(_data);
  _data = new_p;
  return self;
}

L void CustomBuffer<Self, T, allocator>::drop()
{
  if (_data)
  {
    allocator::free(_data);
    _data = nullptr;
    _cap = _len = 0;
  }
}
L void CustomBuffer<Self, T, allocator>::drop() const
{
  if (_data)
  {
    allocator::free(_data);
    _data = nullptr;
  }
}

L Own<Self> CustomBuffer<Self, T, allocator>::copy() const
{
  return Self::from(to_view());
}

L Own<Self> CustomBuffer<Self, T, allocator>::move()
{
  Self ret = self;
  self = Self::init();
  return ret;
}

L Self& CustomBuffer<Self, T, allocator>::rm(i32 idx)
{
  need(_len > 0);
  const u32 i = idx < 0 ? len() + idx : idx;
  if macro(Dropable<T>)
    _data[i].drop();
  std::copy(begin()+i+1, end(), begin()+i);
  _len--;
  return as_self();
}

L Self& CustomBuffer<Self, T, allocator>::rm(u32 begin_, u32 end_)
{
  need(end_ >= begin_);
  if (end_ == begin_)
    return self;
  const u32 count = end_ - begin_;
  need(_len >= count);
  if macro(Dropable<T>)
    (*this)[begin_, end_].drop();
  std::copy(begin()+end_, end(), begin()+begin_);
  _len -= count;
  return as_self();
}

L View<T> CustomBuffer<Self, T, allocator>::to_view() const
{
  return View<T>::range(_data, _len);
}

L Self& CustomBuffer<Self, T, allocator>::clear()
{
  _len = 0;
  return as_self();
}

L View<const T> CustomBuffer<Self, T, allocator>::slice(u32 length) const
{
  need(length <= _len);
  return View<const T>::range(_data, length);
}

L View<const T> CustomBuffer<Self, T, allocator>::slice(u32 begin, u32 end) const
{
  need(end <= _len);
  need(begin <= end);
  return View<const T>::range(_data+begin, end-begin);
}

L View<T> CustomBuffer<Self, T, allocator>::slice(u32 length) 
{
  need(length <= _len);
  return View<T>::range(_data, length);
}

L View<T> CustomBuffer<Self, T, allocator>::slice(u32 begin, u32 end) 
{
  need(end <= _len);
  need(begin <= end);
  return View<T>::range(_data+begin, end-begin);
}

L const T& CustomBuffer<Self, T, allocator>::operator[] (const i32 i) const
{
  const u32 index = i < 0 ? len() + i : i;
  need(ok());
  need(index >= 0);
  need(index < _len);
  return _data[index];
}

L T& CustomBuffer<Self, T, allocator>::operator[] (const i32 i)
{
  const u32 index = i < 0 ? len() + i : i;
  need(ok());
  need(index >= 0);
  need(index < _len);
  return _data[index];
}

L const T& CustomBuffer<Self, T, allocator>::operator[] (const u32 i) const
{
  need(ok());
  need(i >= 0);
  need(i < _len);
  return _data[i];
}

L T& CustomBuffer<Self, T, allocator>::operator[] (const u32 i)
{
  need(ok());
  need(i >= 0);
  need(i < _len);
  return _data[i];
}

L Self& CustomBuffer<Self, T, allocator>::cap(u32 new_alloc_size)
{
  if (new_alloc_size < _cap)
    return *reinterpret_cast<Self*>(this);
  _data = ::alloc<T>(_data, new_alloc_size);
  _cap = new_alloc_size;
  return as_self();
}

L Self& CustomBuffer<Self, T, allocator>::len(u32 new_size)
{
  need(_cap >= new_size);
  _len = new_size;
  return as_self();
}

L Self& CustomBuffer<Self, T, allocator>::len(Ref<T> filler, u32 new_size)
  requires Copiable<T>
{
  need(_cap >= new_size);
  if (new_size > len())
    for (auto& elem : View<T>::range(end(), new_size-len()))
      elem = copy(filler);
  _len = new_size;
  return as_self();
}

L Self& CustomBuffer<Self, T, allocator>::len(Ref<T>* filler, u32 new_size)
  requires Copiable<T>
{
  need(_cap >= new_size);
  if (new_size > len())
    for (auto& elem : View<T>::range(end(), new_size-len()))
      elem = copy(*filler);
  _len = new_size;
  return as_self();
}

template <class T>
struct HeapBuffer : CustomBuffer<HeapBuffer<T>, T, CAllocator<T>>
{};

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
    if macro(serde::Serializable<T>)
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

template <class Self, class T, Allocator<T> allocator>
template <class Self_>
  requires std::same_as<Self_, Self>
Opt<Self_> CustomBuffer<Self, T, allocator>::deserialize(
  serde::DeserCallback cb,
  void *data
) {
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
    return _;
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
macro FormatView<char, CAllocator<char>> View<T>::format() const
  requires Formattable<T>
{
  FormatView<char, CAllocator<char>> ret;
  if (len() == 0)
  {
    const char* const s = "[]";
    ret.begin() = CAllocator<char>::alloc(2);
    std::copy(s, s+2, ret.begin());
    ret.end() = ret.begin() + 2;
  }
  else
  {
    mut s = HeapBuffer<char>::init();
    s.push('[');
    let fmt1 = std::format("{}", _begin[0]);
    s.extend(View<const char>::range(fmt1.data(), fmt1.size()));
    for (const T& o : slice(1, len()))
    {
      s.extend(View<const char>::range(", ", 2));
      let fmt2 = std::format("{}", o);
      s.extend(View<const char>::range(fmt2.data(), fmt2.size()));
    }
    s.push(']');
    ret.begin() = &s.first();
    ret.end() = &s.last();
  }
  return ret;
}

template <class T>
constexpr HeapBuffer<View<T>> View<T>::split(const T& item) const
{
  // 1. count
  u32 c = 1;
  for (const T& e : *this)
    if (e == item)
      c++;
  mut h = HeapBuffer<View<T>>::alloc(c);
  u32 prev = 0;
  // 2. split
  for (c = 0; c < _len; c++)
  {
    if (_begin[c] != item)
      continue;
    h.push(View<T>::range(_begin+prev, c-prev));
    prev = c;
  }
  h.push(View<T>::range(_begin+prev, c-prev));
  return h;
}

template <class T>
constexpr HeapBuffer<T> View<T>::alloc() const
{ return HeapBuffer<T>::from(to_const()); }


#undef self
#undef L

#endif
