#pragma once
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
  Own<T*> _begin;
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
  static macro Span<T> from(const RVal<It> auto it)
  {
    Span<T> self;
    self._begin = allocator::alloc(size(it));
    self._len = size(it);
    for (u32 i = 0; i < self._len; i++)
    {
      self._begin[i] = it;
    }
  }
  macro void drop() const
  {
    if (_begin)
    {
      
      _begin = nullptr;
    }
  }
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
