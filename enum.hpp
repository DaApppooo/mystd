#ifndef H_ENUM
#define H_ENUM
#include <functional>
#include <memory>
#include <utility>
#include <algorithm>
#include <cassert>
#include "macros.hpp"
#include "traits.hpp"

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
    macro operator std::size_t() const
    {
        return   std::is_same<A, B>{}
               ? 0
               : UINT32_MAX;
    }
};

template<typename What, typename ... Args>
struct is_present {
    static macro bool value {(std::is_same_v<What, Args> || ...)};
};

template <class... Callables>
struct CallableSet : Callables...
{
  using Callables::operator () ...;
};

namespace detail {

template<std::size_t I, typename R, typename F>
inline macro R with_integral_constant(F f)
{
  return static_cast<F>(f)(std::integral_constant<std::size_t, I>{});
}


} // namespace detail

template<std::size_t N, typename R = void, typename F>
inline macro R with_n(int n, F &&f)
{
  macro auto invoke_array =
    []<std::size_t...I>(std::index_sequence<I...>) {
    return std::array{ detail::with_integral_constant<I, R, F&&>... };
  }(std::make_index_sequence<N>{});

  return invoke_array.at(n)(std::forward<F>(f));
}
}

template <class OrderedCallableInst, class R, class... T>
consteval bool match_callables_const()
{
  return (Callable<OrderedCallableInst, R, const T&> && ...);
};
template <class OrderedCallableInst, class R, class... T>
consteval bool match_callables()
{
  return (Callable<OrderedCallableInst, R, T&> && ...);
};


template <class... T>
struct alignas(std::max({4UL, alignof(T)...})) Enum
{
  using Self = Enum<T...>;
  using TypesTuple = std::tuple<T...>;
  static macro size_t _OBJ_SIZE = std::max({sizeof(T)...});
  static macro size_t _OBJ_COUNT = sizeof...(T);
  uint32_t type;
  char _data[_OBJ_SIZE];
  template<int N>
  using NthType =
        typename std::tuple_element<N, TypesTuple>::type;

  macro Enum(const Self& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      NthType<i> copied(other.get<NthType<i>>());
      std::construct_at((NthType<i>*)data, std::move(copied));
    });
  }
  macro Enum(Self&& other)
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
  macro Enum(const U& u)
  {
    type = _enum_utils::index_of<U, T...>::value;
    U& dst = *(U*)_data;
    std::construct_at(&dst, std::move(u));
  }
  macro Self& operator = (const Self& other)
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
  macro Self& operator = (Self&& other)
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
  macro Self& operator = (const U& u)
  {
    type = _enum_utils::index_of<U, T...>::value;
    U& dst = *(U*)_data;
    dst = u;
    return *this;
  }
  macro ~Enum()
  {
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data](auto i) {
      std::destroy_at((NthType<i>*)data);
    });
  }
  macro void drop()
  {
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data](auto i) {
      if (Dropable<NthType<i>>)
        ((NthType<i>*)data)->drop();
    });
  }

  template <class R, class... Funcs>
    requires (
       !std::is_same_v<R, void>
  && match_callables_const<_enum_utils::CallableSet<Funcs...>, R, T...>()
    )
  macro R fetch(Funcs... funcs) const
  {
    const auto b = _enum_utils::CallableSet<Funcs...>{funcs...};
    const auto t = std::tuple([&b](const T& _o){return b(_o);}...);
    const uint32_t idx = type;
    const char* data = _data;
    R ret;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&ret, &t, &data](auto i) {
      ret = std::get<i>(t)(*(NthType<i>*)data);
    });
    return ret;
  }
  template <class R, class... Funcs>
    requires (
       !std::is_same_v<R, void>
  && match_callables<_enum_utils::CallableSet<Funcs...>, R, T...>()
    )
  macro R fetch(Funcs... funcs)
  {
    const auto b = _enum_utils::CallableSet<Funcs...>{funcs...};
    const auto t = std::tuple([&b](T& _o){return b(_o);}...);
    const uint32_t idx = type;
    const char* data = _data;
    R ret;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&ret, &t, &data](auto i) {
      ret = std::get<i>(t)(*(NthType<i>*)data);
    });
    return ret;
  }
  template <class... Funcs>
    requires
      (match_callables_const<_enum_utils::CallableSet<Funcs...>, void, T...>())
  macro void match(Funcs... funcs) const
  {
    const auto b = _enum_utils::CallableSet<Funcs...>{funcs...};
    const auto t = std::tuple([&b](const T& _o){b(_o);}...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }
  template <class... Funcs>
    requires 
      (match_callables<_enum_utils::CallableSet<Funcs...>, void, T...>())
  macro void match(Funcs... funcs)
  {
    const auto b = _enum_utils::CallableSet<Funcs...>{funcs...};
    const auto t = std::tuple([&b](T& _o){b(_o);}...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }

  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  macro bool is() const
  {
    return size_t(_enum_utils::index_of<U, T...>()) == type;
  }
  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  macro U& get() const
  {
    macro size_t idx = _enum_utils::index_of<U, T...>();
    need(type == idx);
    return *(U*)_data;
  }
  template <class U>
    requires (_enum_utils::is_present<U, T...>::value)
  macro U& get()
  {
    macro size_t idx = _enum_utils::index_of<U, T...>();
    need(type == idx);
    return *(U*)_data;
  }
  macro operator size_t () const
  { return type; }
};

struct Empty {};

template <class... Ts>
struct alignas(std::max({4UL, alignof(Ts)...})) Enum<Empty, Ts...>
{
  using Self = Enum<Empty, Ts...>;
  using TypesTuple = std::tuple<Empty, Ts...>;
  static macro size_t _OBJ_SIZE
    = std::max({sizeof(Empty), sizeof(Ts)...});
  static macro size_t _OBJ_COUNT = sizeof...(Ts)+1;
  uint32_t type;
  char _data[_OBJ_SIZE];
  template<int N>
  using NthType =
        typename std::tuple_element<N, TypesTuple>::type;

  macro Enum() : type(0), _data{0} {}
  macro Enum(const Self& other)
  {
    const uint32_t idx = other.type;
    const char* data = _data;
    type = other.type;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data, &other](auto i) {
      NthType<i> copied(other.get<NthType<i>>());
      std::construct_at((NthType<i>*)data, std::move(copied));
    });
  }
  macro Enum(Self&& other)
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
  macro Enum(const U& u)
  {
    type = _enum_utils::index_of<U, Ts...>::value;
    U& dst = *(U*)_data;
    std::construct_at(&dst, std::move(u));
  }
  macro Self& operator = (const Self& other)
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
  macro Self& operator = (Self&& other)
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
  macro Self& operator = (const U& u)
  {
    type = _enum_utils::index_of<U, Ts...>::value+1;
    U& dst = *(U*)_data;
    dst = u;
    return *this;
  }
  macro ~Enum()
  {
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&data](auto i) {
      std::destroy_at((NthType<i>*)data);
    });
  }

  template <class R>
    requires (!std::is_same_v<R, void>)
  macro R match(std::function<R(const Ts&)>... funcs) const
  {
    const auto t = std::tuple([](const Empty&){}, funcs...);
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
  macro R match(std::function<R(Ts&)>... funcs)
  {
    const auto t = std::tuple([](const Empty&){}, funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    R ret;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&ret, &t, &data](auto i) {
      ret = std::get<i>(t)(*(NthType<i>*)data);
    });
    return ret;
  }
  macro void match(std::function<void(const Ts&)>... funcs) const
  {
    const auto t = std::tuple([](const Empty&){}, funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }
  macro void match(std::function<void(Ts&)>... funcs)
  {
    const auto t = std::tuple([](const Empty&){}, funcs...);
    const uint32_t idx = type;
    const char* data = _data;
    _enum_utils::with_n<_OBJ_COUNT>(idx, [&t, &data](auto i) {
      std::get<i>(t)(*(NthType<i>*)data);
    });
  }

  template <class R>
    requires std::is_same_v<R, void>
  macro void match(std::function<void(const Ts&)>... funcs) const
  { match(funcs...); }

  template <class R>
    requires std::is_same_v<R, void>
  macro void match(std::function<void(Ts&)>... funcs)
  { match(funcs...); }

  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  macro bool is() const
  {
    return size_t(_enum_utils::index_of<U, Ts...>()) == type;
  }
  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  macro U& get() const
  {
    macro size_t idx = _enum_utils::index_of<U, Ts...>();
    need(type == idx);
    return *(U*)_data;
  }
  template <class U>
    requires (_enum_utils::is_present<U, Ts...>::value)
  macro U& get()
  {
    macro size_t idx = _enum_utils::index_of<U, Ts...>();
    need(type == idx);
    return *(U*)_data;
  }

  // full opt implementation
  macro bool is_null() const { return type == 0; }
  static macro Self null()
  { return Self(); }

  macro operator size_t () const
  { return type; }
};

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
