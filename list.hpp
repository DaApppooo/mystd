#pragma once
#ifndef H_LIST
#define H_LIST
#include <initializer_list>
#include "macros.hpp"
#include "buffer.hpp"
#include "array.hpp"

constexpr struct {
  template <class T, class... Ts>
  constexpr HeapBuffer<T> operator [] (T arg0, Ts... args) const
  {
    const std::initializer_list<T> init_ls = {arg0, args...};
    let v = View<const T>::from(&*(init_ls.begin())).to(&*(init_ls.end()));
    return HeapBuffer<T>::from(v);
  }
} list;

constexpr struct {
  template <class T, class... Ts>
  constexpr Array<T, 1+sizeof...(Ts)> operator [] (T arg0, Ts... args) const
  {
    const std::initializer_list<T> init_ls = {arg0, args...};
    let v = Array<T, 1+sizeof...(Ts)>::from(init_ls);
    return v;
  }
} array;

#endif
