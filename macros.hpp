#ifndef H_MACROS
#define H_MACROS
#include <cstdlib>
#include "types.hpp"

#define let const auto
#define mut auto
#define mod namespace

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

#endif
