#include <type_traits>
#include "traits.hpp"

template <class T>
concept Optionable = requires(T const& t)
{
  std::is_pointer_v<T> || (T::null() && t.is_null());
};

template <Optionable T>
T to_null(T obj)
{
  if constexpr(std::is_pointer_v<T>)
    return nullptr;
  else
    return T::null();
}
template <Optionable T>
T is_null(T obj)
{
  if constexpr(std::is_pointer_v<T>)
    return obj == nullptr;
  else
    return obj.is_null();
}

template <class T>
  requires (Optionable<T> || !Optionable<T>)
struct Opt
{
  T _obj;
  enum _Status { SOME, NONE } _status;

  static constexpr Opt<T> null()
  { return { T(), NONE }; }

  static constexpr Opt<T> from(T obj)
  { return { obj, SOME }; }

  constexpr bool is_null() const
  { return _status == NONE; }

  constexpr T& get()
  {
    assert(_status == SOME);
    return _obj;
  }

  constexpr const T& get() const
  {
    assert(_status == SOME);
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

template <Optionable T>
struct Opt<T>
{
  T _obj;

  static constexpr Opt<T> null()
  { return {T::null()}; }

  static constexpr Opt<T> from(T obj)
  { return {obj}; }

  constexpr bool is_null() const
  { return is_null(_obj); }

  constexpr T& get()
  {
    assert(!is_null());
    return _obj;
  }

  constexpr const T& get() const
  {
    assert(!is_null());
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

