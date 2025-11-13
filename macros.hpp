#ifndef H_MACROS
#define H_MACROS
#include <cassert>
#include <cstdlib>
#include <exception>
#include <format>
#include <string>
#include <type_traits>
#include <cassert>
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

struct AssertionException : std::exception
{
  using Self = AssertionException;
  std::string _what;
  constexpr AssertionException() : _what() {}
  constexpr AssertionException(std::string&& s) : _what(s) {}
  constexpr Self& operator = (const Self& other) noexcept
  {
    _what.assign(other._what);
    return *this;
  }
  virtual constexpr
    const char* what()
    const noexcept
    { return _what.c_str(); }
  virtual constexpr ~AssertionException()
  {}
};


// constexpr assertion
constexpr int __need(
  bool test,
  const char* expr,
  const char* loc,
  u32 lino,
  const char* func
) {
  if (!test)
  {
    if (std::is_constant_evaluated())
      return 0;
    else
      __assert_fail(expr, loc, lino, func);
  }
  return 1;
}
#ifdef FINAL
#define need(test) [[assume(test)]]
#else
#define need(test) \
  if consteval { \
    static_assert(test); \
  } else { \
    void(__need((test), #test, __FILE__, __LINE__, __ASSERT_FUNCTION)); }
#endif

#endif
