#ifndef H_ENUM
#define H_ENUM
#include <functional>
#include <memory>
#include <utility>
#include <algorithm>
#include <cassert>
#include "macros.hpp"
#include "opt.hpp"

namespace _enum_utils
{
template <typename A, typename B, typename... C>
struct index_of
  : std::integral_constant < std::size_t,
                             std::is_same<A, B>{} ? 0 : 1+index_of<A, C...>{} >
{};

template <typename A, typename B>
struct index_of<A, B>
  : std::integral_constant<std::size_t, 0>
{
    constexpr operator std::size_t() const
    {
        return   std::is_same<A, B>{}
               ? 0
               : UINT32_MAX;
    }
};

template<typename What, typename ... Args>
struct is_present {
    static constexpr bool value {(std::is_same_v<What, Args> || ...)};
};

namespace detail {

template<std::size_t I, typename R, typename F>
inline constexpr R with_integral_constant(F f)
{
  return static_cast<F>(f)(std::integral_constant<std::size_t, I>{});
}

} // namespace detail

template<std::size_t N, typename R = void, typename F>
inline constexpr R with_n(int n, F &&f)
{
  constexpr auto invoke_array =
    []<std::size_t...I>(std::index_sequence<I...>) {
    return std::array{ detail::with_integral_constant<I, R, F&&>... };
  }(std::make_index_sequence<N>{});

  return invoke_array.at(n)(std::forward<F>(f));
}
}


template <class... T>
struct alignas(std::max({4UL, alignof(T)...})) Enum
{
  using Self = Enum<T...>;
  using TypesTuple = std::tuple<T...>;
  static constexpr size_t _OBJ_SIZE = std::max({sizeof(T)...});
  static constexpr size_t _OBJ_COUNT = sizeof...(T);
  uint32_t type;
  char _data[_OBJ_SIZE];
  template<int N>
  using NthType =
        typename std::tuple_element<N, TypesTuple>::type;

  constexpr Enum(const Self& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      NthType<i> copied(other.get<NthType<i>>());
      std::construct_at((NthType<i>*)data, std::move(copied));
    });
  }
  constexpr Enum(Self&& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      std::construct_at((NthType<i>*)data, std::move(other.get<NthType<i>>()));
    });
  }
  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  constexpr Enum(const U& u)
  {
    type = _enum_utils::index_of<U, T...>::value;
    U& dst = *(U*)_data;
    std::construct_at(&dst, std::move(u));
  }
  constexpr Self& operator = (const Self& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      NthType<i> copied(other.get<NthType<i>>());
      std::construct_at((NthType<i>*)data, std::move(copied));
    });
    return *this;
  }
  constexpr Self& operator = (Self&& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      std::construct_at((NthType<i>*)data, std::move(other.get<NthType<i>>()));
    });
    return *this;
  }
  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  constexpr Self& operator = (const U& u)
  {
    type = _enum_utils::index_of<U, T...>::value;
    U& dst = *(U*)_data;
    dst = u;
    return *this;
  }
  constexpr ~Enum()
  {
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data](auto i) {
      std::destroy_at((NthType<i>*)data);
    });
  }

  template <class R>
    requires (!std::is_same_v<R, void>)
  constexpr R match(std::function<R(const T&)>... funcs) const
  {
    const auto t = std::tuple(funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    R ret;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&ret, &t, &data](auto i) {
      ret = std::get<i>(t)(*(NthType<i>*)data);
    });
    return ret;
  }
  template <class R>
    requires (!std::is_same_v<R, void>)
  constexpr R match(std::function<R(T&)>... funcs)
  {
    const auto t = std::tuple(funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    R ret;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&ret, &t, &data](auto i) {
      ret = std::get<i>(t)(*(NthType<i>*)data);
    });
    return ret;
  }
  constexpr void match(std::function<void(const T&)>... funcs) const
  {
    const auto t = std::tuple(funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }
  constexpr void match(std::function<void(T&)>... funcs)
  {
    const auto t = std::tuple(funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }

  template <class R>
    requires std::is_same_v<R, void>
  constexpr void match(std::function<void(const T&)>... funcs) const
  { match(funcs...); }

  template <class R>
    requires std::is_same_v<R, void>
  constexpr void match(std::function<void(T&)>... funcs)
  { match(funcs...); }

  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  constexpr bool is() const
  {
    return size_t(_enum_utils::index_of<U, T...>()) == type;
  }
  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  constexpr U& get() const
  {
    constexpr size_t idx = _enum_utils::index_of<U, T...>();
    need(type == idx);
    return *(U*)_data;
  }
  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  constexpr U& get()
  {
    constexpr size_t idx = _enum_utils::index_of<U, T...>();
    need(type == idx);
    return *(U*)_data;
  }
  constexpr operator size_t () const
  { return type; }
};

struct _EnumOptNull {};

template <class... Ts>
struct alignas(std::max({4UL, alignof(Ts)...})) Enum<_EnumOptNull, Ts...>
{
  using Self = Enum<_EnumOptNull, Ts...>;
  using TypesTuple = std::tuple<_EnumOptNull, Ts...>;
  static constexpr size_t _OBJ_SIZE
    = std::max({sizeof(_EnumOptNull), sizeof(Ts)...});
  static constexpr size_t _OBJ_COUNT = sizeof...(Ts)+1;
  uint32_t type;
  char _data[_OBJ_SIZE];
  template<int N>
  using NthType =
        typename std::tuple_element<N, TypesTuple>::type;

  constexpr Enum() : type(0), _data{0} {}
  constexpr Enum(const Self& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      NthType<i> copied(other.get<NthType<i>>());
      std::construct_at((NthType<i>*)data, std::move(copied));
    });
  }
  constexpr Enum(Self&& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      std::construct_at((NthType<i>*)data, std::move(other.get<NthType<i>>()));
    });
  }
  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  constexpr Enum(const U& u)
  {
    type = _enum_utils::index_of<U, Ts...>::value;
    U& dst = *(U*)_data;
    std::construct_at(&dst, std::move(u));
  }
  constexpr Self& operator = (const Self& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      NthType<i> copied(other.get<NthType<i>>());
      std::construct_at((NthType<i>*)data, std::move(copied));
    });
    return *this;
  }
  constexpr Self& operator = (Self&& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      std::construct_at((NthType<i>*)data, std::move(other.get<NthType<i>>()));
    });
    return *this;
  }
  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  constexpr Self& operator = (const U& u)
  {
    type = _enum_utils::index_of<U, Ts...>::value+1;
    U& dst = *(U*)_data;
    dst = u;
    return *this;
  }
  constexpr ~Enum()
  {
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data](auto i) {
      std::destroy_at((NthType<i>*)data);
    });
  }

  template <class R>
    requires (!std::is_same_v<R, void>)
  constexpr R match(std::function<R(const Ts&)>... funcs) const
  {
    const auto t = std::tuple([](const _EnumOptNull&){}, funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    R ret;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&ret, &t, &data](auto i) {
      ret = std::get<i>(t)(*(NthType<i>*)data);
    });
    return ret;
  }
  template <class R>
    requires (!std::is_same_v<R, void>)
  constexpr R match(std::function<R(Ts&)>... funcs)
  {
    const auto t = std::tuple([](const _EnumOptNull&){}, funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    R ret;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&ret, &t, &data](auto i) {
      ret = std::get<i>(t)(*(NthType<i>*)data);
    });
    return ret;
  }
  constexpr void match(std::function<void(const Ts&)>... funcs) const
  {
    const auto t = std::tuple([](const _EnumOptNull&){}, funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }
  constexpr void match(std::function<void(Ts&)>... funcs)
  {
    const auto t = std::tuple([](const _EnumOptNull&){}, funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }

  template <class R>
    requires std::is_same_v<R, void>
  constexpr void match(std::function<void(const Ts&)>... funcs) const
  { match(funcs...); }

  template <class R>
    requires std::is_same_v<R, void>
  constexpr void match(std::function<void(Ts&)>... funcs)
  { match(funcs...); }

  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  constexpr bool is() const
  {
    return size_t(_enum_utils::index_of<U, Ts...>()) == type;
  }
  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  constexpr U& get() const
  {
    constexpr size_t idx = _enum_utils::index_of<U, Ts...>();
    need(type == idx);
    return *(U*)_data;
  }
  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  constexpr U& get()
  {
    constexpr size_t idx = _enum_utils::index_of<U, Ts...>();
    need(type == idx);
    return *(U*)_data;
  }

  // full opt implementation
  constexpr bool is_null() const { return type == 0; }
  static constexpr Self null()
  { return Self(); }

  constexpr operator size_t () const
  { return type; }
};

template <class... T>
constexpr 

// useful if you want to generate a C enumeration when you want an actual
// switch statement for your object
#define gen_enum(name, ...) \
struct name##Type { enum { __VA_ARGS__ }; }; \
using name = Enum<__VA_ARGS__>

// Call a method with any parameter (CALL_EXPR) on the object ENUM_OBJ.
// RETURN_TYPE can be void.
// ENUM_OBJ cannot be const. Use ENUM_CCALL instead.
// Note: every type in the union must declare the called method.
#define ENUM_CALL(ENUM_OBJ, RETURN_TYPE, CALL_EXPR) \
    ([&]<class... Ts>(std::tuple<Ts...>){ \
      return ENUM_OBJ.match<RETURN_TYPE>( \
        [&](Ts& _x){ return _x.CALL_EXPR; } \
        ... \
      ); \
    })(std::remove_reference<decltype(ENUM_OBJ)>::type::TypesTuple{})

// Same as ENUM_CALL except that the object can be const.
#define ENUM_CCALL(ENUM_OBJ, RETURN_TYPE, CALL_EXPR) \
    ([&]<class... Ts>(std::tuple<Ts...>){ \
      return ENUM_OBJ.match<RETURN_TYPE>( \
        [&](const Ts& _x){ return _x.CALL_EXPR; } \
        ... \
      ); \
    })(std::remove_reference<decltype(ENUM_OBJ)>::type::TypesTuple{})

#endif /* H_ENUM */
