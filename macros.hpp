#ifndef H_MACROS
#define H_MACROS
#include <cassert>
#include <cstdlib>
#include <cassert>
#include <print>
#include "types.hpp"

#define let const auto
#define mut auto
#define mod namespace
#define trait template <class T> concept

template <class T>
constexpr T* alloc(u32 s)
{ return (T*)malloc(sizeof(T)*s); }
template <class T>
constexpr T* alloc(T* p, u32 s)
{
  if (p)
    return (T*)realloc(p, sizeof(T)*s);
  else
    return (T*)malloc(sizeof(T)*s);
}

inline void __consteval_fail() {}

using std::print;
using std::println;

#ifdef FINAL
#define need(test) [[assume(test)]]
#else
#define need(test) \
  std::is_constant_evaluated() ? \
    ((test) ? void(0) : __consteval_fail()) \
    : assert(test)
#endif

#endif
