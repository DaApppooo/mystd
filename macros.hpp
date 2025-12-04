#ifndef H_MACROS
#define H_MACROS
#include <cassert>
#include <cstdlib>
#include <cassert>
#include <print>
#include <type_traits>
#include "types.hpp"

#define let const auto
#define mut auto
#define mod namespace
#define trait template <class T> concept

#ifdef __GNUG__
// true if compiled with the gcc toolchain
static constexpr bool __gnug__ = true;
#else
// false if not compiled with the gcc toolchain
static constexpr bool __gnug__ = false;
#endif

template <class T>
inline constexpr T* alloc(u32 s)
{ return (T*)malloc(sizeof(T)*s); }
template <class T>
inline constexpr T* alloc(T* p, u32 s)
{
  if (p)
    return (T*)realloc(p, sizeof(T)*s);
  else
    return (T*)malloc(sizeof(T)*s);
}

inline void __consteval_fail() {}

using std::print;
using std::println;

static constexpr struct _DefaultType
{
  using Self = _DefaultType;
  constexpr _DefaultType() = default;
  constexpr _DefaultType(const _DefaultType&) = default;
  constexpr _DefaultType(_DefaultType&&) = default;
  constexpr Self& operator = (const _DefaultType&) = default;
  constexpr Self& operator = (_DefaultType&&) = default;
  template <class T>
  constexpr _DefaultType(const T&) {}
  template <class T>
  constexpr const _DefaultType& operator = (const T&) const { return *this; }
} _;

#ifdef FINAL
#define need(test) [[assume(test)]]
#else
#define need(test) \
  std::is_constant_evaluated() ? \
    ((test) ? void(0) : __consteval_fail()) \
    : assert(test)
#endif

template<typename T, size_t... I>
auto _tuple_reverse_impl(T&& t, std::index_sequence<I...>)
{
  return std::make_tuple(std::get<sizeof...(I) - 1 - I>(std::forward<T>(t))...);
}

template<typename T>
auto _tuple_reverse(T&& t)
{
  return _tuple_reverse_impl(std::forward<T>(t),
                      std::make_index_sequence<std::tuple_size<T>::value>());
}

// UNSTABLE UTILITY (unavailable for non-gcc compilers)
static constexpr struct {
  template <class... Ts>
  struct TiePack
  {
    std::tuple<Ts...> _pack;
    constexpr TiePack() = default;
    constexpr TiePack(const TiePack&) = default;
    constexpr TiePack(TiePack&&) = default;
    constexpr TiePack(Ts... args)
      : _pack(args...) {}
    constexpr TiePack& operator = (const TiePack&) = default;
    constexpr TiePack& operator = (TiePack&&) = default;
    template <class U>
      requires (sizeof(U) == sizeof(std::tuple<typename std::remove_reference<Ts>::type...>))
    constexpr TiePack& operator = (const U& other)
      requires __gnug__ // tuple layout is implementation specific
    {
      auto into_tuple = *reinterpret_cast<
        const std::tuple<typename std::remove_reference<Ts>::type...>*
      >(&other);
      auto reversed_vers = _tuple_reverse(std::move(into_tuple));
      _pack = reversed_vers;
      return *this;
    }
  };
  template <class... Ts>
  constexpr TiePack<Ts&...> operator [] (Ts&... args) const
  { return TiePack<Ts&...>(args...); }
} tie;

#endif
