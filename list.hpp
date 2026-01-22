#pragma once
#include "traits.hpp"
#include <memory>
#ifndef H_LIST
#define H_LIST
#include <initializer_list>
#include "macros.hpp"
#include "buffer.hpp"
#include "array.hpp"

template <class T, template <class U> class freetype_allocator = CAllocator>
  requires Allocator<freetype_allocator<remove_const<T>>, remove_const<T>>
struct Span
{
  using Self = Span<T>;
  using iterator = T*;
  using const_iterator = const T*;
  using indexed_type = T;
  using index_t = i32;
  using allocator = freetype_allocator<remove_const<T>>;
  mutable Own<T*> _begin;
  u32 _len;
  
  template <class U>
  static macro Self hold(Own<U*> u)
  { return {reinterpret_cast<T*>(u), 1}; }
  template <class U>
  static macro Self hold(Own<U*> u, u32 len)
  { return {reinterpret_cast<T*>(u), len}; }
  static macro Self range(Own<T*> start, u32 len)
  { return {start, len}; }
  static macro Self cstr(Own<T*> start) = delete;
  static macro Self from(Own<T*> start)
  { return {start, 0U}; }
  [[nodiscard]]
  macro Span<T> to(Ref<T*> end)
  { Span<T> ret = { _begin, u32(end-_begin) }; _begin = nullptr; return ret; }
  static macro Self empty() { return {nullptr, 0U}; }
  static macro Self null() { return empty(); }
  static macro Self alloc(u32 count)
  { return { allocator::alloc(count), count }; }

  // Moves ownership out of the given iterable and into the returned span.
  template <Iterable It>
    requires Sized<It>
  static macro Self steal(It& it)
  {
    Span<T> self;
    self._begin = &*it.begin();
    self._len = ::size(it);
    std::construct_at(&it);
    return self;
  }
  template <Iterable It>
    requires Sized<It>
  static macro Self steal(It&& it)
  {
    Span<T> self;
    self._begin = &*it.begin();
    self._len = ::size(it);
    std::construct_at(&it);
    return self;
  }
  // Copy values, not source allocation
  template <Iterable It>
    requires Sized<It>
  static macro Self from(const It& it)
  {
    Span<T> self;
    self._begin = allocator::alloc(size(it));
    self._len = size(it);
    auto itr = it.begin();
    for (u32 i = 0; i < self._len; (++i, ++itr))
      self._begin[i] = ::copy(*itr);
  }
  macro void drop() const
  {
    if (_begin)
    {
      if macro(Dropable<T>)
        for (T& t : *this)
          t.drop();
      allocator::free(_begin);
      _begin = nullptr;
    }
  }
  macro u32& len() { return _len; }
  macro const u32 len() const { return _len; }
  macro Self& len(u32 new_len) { _len = new_len; return *this; }
  macro Self copy() const
  {
    Span<T> self;
    self._begin = allocator::alloc(_len);
    std::copy(_begin, _begin+_len, self._begin);
    self._len = _len;
    return self;
  }
  macro Self copy(u32 new_len) const
  {
    Span<T> self;
    self._begin = allocator::alloc(new_len);
    std::copy(_begin, _begin+std::min(_len, new_len), self._begin);
    self._len = new_len;
    return self;
  }
  macro Own<Span<remove_const<T>, freetype_allocator>>
    to_mut() const
  {
    mut ret = Span<remove_const<T>, freetype_allocator>{
      (typename std::remove_const<T>::type*)_begin, _len
    };
    _begin = nullptr;
    return ret;
  }
  macro Own<Span<const T, freetype_allocator>> to_const() const
  {
    mut ret = Span<const T, freetype_allocator>{ (const T*)_begin, _len };
    _begin = nullptr;
    return ret;
  }
  template <class U>
  macro Span<U> as()
  { return { reinterpret_cast<U*>(_begin), u32(_len*sizeof(T)/sizeof(U)) }; }  
  template <class U>
  macro const Span<U> as() const
  { return { reinterpret_cast<U*>(_begin), u32(_len*sizeof(T)/sizeof(U)) }; }  
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

  macro const T& operator * () const
  { return *_begin; }
  macro T& operator * ()
  { return *_begin; }
  macro Span<T>& operator ++ ()
  { _begin++; _len--; return *this; }
  macro Span<T>& operator -- ()
  { _begin--; _len++; return *this; }
  macro bool operator == (const Span<T> o) const
  { return to_view() == o.to_view(); }
  macro View<T> to_view() { return View<T>::range(_begin, _len); }
  macro View<const T> to_view() const
  { return View<const T>::range(_begin, _len); }
  macro const T& operator[](index_t index) const
  { return _begin[index < 0 ? _len + index : index]; }
  macro T& operator[](index_t index)
  { return _begin[index < 0 ? _len + index : index]; }
  macro const T& operator[](u32 index) const
  { return _begin[index]; }
  macro T& operator[](u32 index)
  { return _begin[index]; }
  macro View<const T> operator[](u32 start, u32 end) const
  { return View<const T>::range(_begin+start, end-start); }
  macro View<T> operator[](u32 start, u32 end)
  { return View<T>::range(_begin+start, end-start); }
  macro View<T> shortened(u32 diff) const
  { return {_begin+diff, _len-diff}; }
  macro View<T> shortened(u32 begin_off, u32 end_off) const
  { return {_begin+begin_off, _len-begin_off-end_off}; }
  
  macro operator FormatView<const char> () const
    requires std::same_as<remove_const<T>, char>
  { return { _begin, _begin+_len, VoidAllocator<indexed_type>::free }; }
  macro operator FormatView<const char16_t> () const
    requires std::same_as<remove_const<T>, char16_t>
  { return { _begin, _begin+_len, VoidAllocator<indexed_type>::free }; }
  macro operator FormatView<const char32_t> () const
    requires std::same_as<remove_const<T>, char32_t>
  { return { _begin, _begin+_len, VoidAllocator<indexed_type>::free }; }
  macro operator FormatView<const wchar_t> () const
    requires std::same_as<remove_const<T>, wchar_t>
  { return { _begin, _begin+_len, VoidAllocator<indexed_type>::free }; }

  serde::Result serialize(serde::SerCallback cb, void* data) const
  { return to_view().serialize(cb, data); }
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  macro Selection<const Self> sel() const
  { return { *this, HeapBuffer<u32>::init() }; }
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  macro Selection<Self> sel()
  { return { *this, HeapBuffer<u32>::init() }; }  
};

template <>
macro Span<char> Span<char>::cstr(Own<char*> start)
{ return Span<char>::steal(View<char>::cstr(start)); }
template <>
macro Span<const char> Span<const char>::cstr(Own<const char*> start)
{
  mut temp = View<const char>::cstr(start);
  return Span<const char>::steal(temp);
}

macro struct {
  template <class T, class... Ts>
  macro HeapBuffer<T> operator [] (T arg0, Ts... args) const
  {
    const std::initializer_list<T> init_ls = {arg0, args...};
    let v = View<const T>::from(&*(init_ls.begin())).to(&*(init_ls.end()));
    return HeapBuffer<T>::from(v);
  }
} list;

macro struct {
  template <class T, class... Ts>
  macro Span<T, CAllocator> operator [] (T arg0, Ts... args) const
  {
    const std::initializer_list<T> init_ls = {arg0, args...};
    let v = View<const T>::from(&*(init_ls.begin())).to(&*(init_ls.end()));
    return Span<T, CAllocator>::from(v);
  }
} span;

template <class T>
using List = HeapBuffer<T>;

macro struct {
  template <class T, class... Ts>
  macro Array<T, 1+sizeof...(Ts)> operator [] (T arg0, Ts... args) const
  {
    const std::initializer_list<T> init_ls = {arg0, args...};
    let v = Array<T, 1+sizeof...(Ts)>::from(init_ls);
    return v;
  }
} array;

#endif
