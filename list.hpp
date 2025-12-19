#pragma once
#include "traits.hpp"
#ifndef H_LIST
#define H_LIST
#include <initializer_list>
#include "macros.hpp"
#include "buffer.hpp"
#include "array.hpp"

template <class T, template <class U> class freetype_allocator = CAllocator>
  requires Allocator<freetype_allocator<T>, T>
struct Span
{
  using Self = Span<T>;
  using iterator = T*;
  using indexed_type = T;
  using index_t = i32;
  using allocator = freetype_allocator<T>;
  mutable Own<T*> _begin;
  u32 _len;
  
  template <class U>
  static macro Span<T> hold(Own<U*> u)
  { return {reinterpret_cast<T*>(u), 1}; }
  template <class U>
  static macro Span<T> hold(Own<U*> u, u32 len)
  { return {reinterpret_cast<T*>(u), len}; }
  static macro Span<T> range(Own<T*> start, u32 len)
  { return {start, len}; }
  static macro Span<T> cstr(Own<T*> start) = delete;
  static macro Span<T> from(Own<T*> start)
  { return {start, 0U}; }
  [[nodiscard]]
  macro Span<T> to(Ref<T*> end)
  { Span<T> ret = { _begin, u32(end-_begin) }; _begin = nullptr; return ret; }
  static macro Span<T> empty() { return {nullptr, 0U}; }
  static macro Span<T> null() { return empty(); }
  static macro Span<T> alloc(u32 count)
  { return { allocator::alloc(count), count }; }

  // Copy values, not source allocation
  template <Iterable It>
    requires Sized<It>
  static macro Span<T> from(const It& it)
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
      _begin = nullptr;
    }
  }
  macro u32 len() const { return _len; }
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

};

macro struct {
  template <class T, class... Ts>
  macro HeapBuffer<T> operator [] (T arg0, Ts... args) const
  {
    const std::initializer_list<T> init_ls = {arg0, args...};
    let v = View<const T>::from(&*(init_ls.begin())).to(&*(init_ls.end()));
    return HeapBuffer<T>::from(v);
  }
} list;

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
