#pragma once
#ifndef H_LIST
#define H_LIST
#include <initializer_list>
#include "macros.hpp"
#include "buffer.hpp"
#include "array.hpp"

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
