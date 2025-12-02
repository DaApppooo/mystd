#ifndef H_OPT
#define H_OPT
#include <type_traits>
#include "traits.hpp"

template <class T>
concept Optionable =
  std::is_pointer_v<T>
  || requires(T const& t)
{
  { T::null() };
  { t.is_null() };
};

template <Optionable T>
constexpr T to_null()
{
  if constexpr(std::is_pointer_v<T>)
    return nullptr;
  else
    return T::null();
}
template <Optionable T>
constexpr bool is_null(T obj)
{
  if constexpr(std::is_pointer_v<T>)
    return obj == nullptr;
  else
    return obj.is_null();
}

template <class T = void>
struct Opt
{
  T _obj;
  enum _Status { SOME, NONE } _status;

  constexpr Opt() : _status(NONE) {}
  constexpr Opt(const Opt<T>&) = default;
  constexpr Opt(Opt<T>&&) = default;
  constexpr Opt<T>& operator = (const Opt<T>&) = default;
  constexpr Opt<T>& operator = (Opt<T>&&) = default;
  constexpr Opt(T o) : _obj(o), _status(SOME) {}

  static constexpr Opt<T> null()
  { return { T(), NONE }; }

  static constexpr Opt<T> from(T obj)
  { return { obj, SOME }; }

  constexpr bool is_null() const
  { return _status == NONE; }

  constexpr T& get()
  {
    need(_status == SOME);
    return _obj;
  }

  constexpr const T& get() const
  {
    need(_status == SOME);
    return _obj;
  }

  constexpr operator bool () const
  { return !is_null(); }

  constexpr void destroy()
  {
    if constexpr(Destroyable<T>)
      if (_status == SOME)
        _obj.destroy();
  }
};

template <>
struct Opt<void>
{
  struct _util_none
  {
    template <class T>
    constexpr operator Opt<T> () const
    { return Opt<T>(); }
  };
  static constexpr _util_none NONE;
};

template <Optionable T>
struct Opt<T>
{
  T _obj;

  constexpr Opt() = default;
  constexpr Opt(const Opt<T>&) = default;
  constexpr Opt(Opt<T>&&) = default;
  constexpr Opt<T>& operator = (const Opt<T>&) = default;
  constexpr Opt<T>& operator = (Opt<T>&&) = default;

  constexpr Opt(T o) : _obj(o) {}
  constexpr operator T () const
  { need(!is_null()); return _obj; }

  static constexpr Opt<T> null()
  { return {to_null<T>()}; }

  static constexpr Opt<T> from(T obj)
  { return {obj}; }

  constexpr bool is_null() const
  { return ::is_null(_obj); }

  constexpr T& get()
  {
    need(!is_null());
    return _obj;
  }

  constexpr const T& get() const
  {
    need(!is_null());
    return _obj;
  }

  constexpr operator bool () const
  { return !is_null(); }

  constexpr void destroy()
  {
    if constexpr(Destroyable<T>)
      if (!is_null())
        _obj.destroy();
  }
};
#endif // H_OPT

