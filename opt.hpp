#ifndef H_OPT
#define H_OPT
#include <iostream>
#include <type_traits>
#include "macros.hpp"
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
macro T to_null()
{
  if macro(std::is_pointer_v<T>)
    return nullptr;
  else
    return T::null();
}
template <Optionable T>
macro bool is_null(T obj)
{
  if macro(std::is_pointer_v<T>)
    return obj == nullptr;
  else
    return obj.is_null();
}

template <class T = void>
struct Opt
{
  static macro remove_ref<T>* _ub_obj = nullptr;
  T _obj;
  enum _Status { SOME, NONE } _status;

  macro Opt()
    requires (!std::is_reference_v<T>)
  { _status = NONE; }
  macro Opt()
    // technically UB but necessary in order to support such basic feature
    // + it's never accessed without crash
    requires (std::is_reference_v<T>)
    : _obj(*_ub_obj)
  { _status = NONE; }
  macro Opt(const Opt<T>&) = default;
  macro Opt(Opt<T>&&) = default;
  macro Opt<T>& operator = (const Opt<T>&) = default;
  macro Opt<T>& operator = (Opt<T>&&) = default;
  macro Opt(T o) : _obj(o), _status(SOME) {}
  macro Opt(const _DefaultType&)
    requires (!std::is_reference_v<T>)
  { _status = NONE; }
  macro Opt(const _DefaultType&)
    requires (std::is_reference_v<T>)
    // technically UB but necessary in order to support such basic feature
    // + it's never accessed without predictable crash
    : _obj(*_ub_obj)
  { _status = NONE; }

  static macro Opt<T> null()
  { return { T(), NONE }; }

  static macro Opt<T> from(T obj)
  { return { obj, SOME }; }

  macro bool is_null() const
  { return _status == NONE; }

  macro T& get()
  {
    need(_status == SOME);
    return _obj;
  }

  macro bool get(T& v)
  {
    if (_status == NONE)
      return false;
    v = _obj;
    return true;
  }

  macro const T& get() const
  {
    need(_status == SOME);
    return _obj;
  }

  macro T& expect(const char* msg)
  {
    if (is_null())
    {
      std::cerr << msg << std::endl;
      need(!is_null());
    }
    return _obj;
  }

  macro const T& expect(const char* msg) const
  {
    if (is_null())
    {
      std::cerr << msg << std::endl;
      need(!is_null());
    }
    return _obj;
  }

  macro operator bool () const
  { return !is_null(); }

  macro void drop()
    requires Dropable<T>
  {
    if (_status == SOME)
      _obj.drop();
  }
};

template <>
struct Opt<void>
{
  struct _util_none
  {
    template <class T>
    macro operator Opt<T> () const
    { return Opt<T>(); }
  };
  static macro _util_none NONE{};
};

template <Optionable T>
struct Opt<T>
{
  T _obj;

  macro Opt() = default;
  macro Opt(const Opt<T>&) = default;
  macro Opt(Opt<T>&&) = default;
  macro Opt<T>& operator = (const Opt<T>&) = default;
  macro Opt<T>& operator = (Opt<T>&&) = default;
  macro Opt(const _DefaultType&) : _obj(to_null<T>()) {}

  macro Opt(T o) : _obj(o) {}
  macro operator T () const
  { need(!is_null()); return _obj; }

  static macro Opt<T> null()
  { return {to_null<T>()}; }

  static macro Opt<T> from(T obj)
  { return {obj}; }

  macro bool is_null() const
  { return ::is_null(_obj); }

  macro T& get()
  {
    need(!is_null());
    return _obj;
  }

  macro const T& get() const
  {
    need(!is_null());
    return _obj;
  }
  
  macro T& expect(const char* msg)
  {
    if (is_null())
    {
      std::cerr << msg << std::endl;
      need(!is_null());
    }
    return _obj;
  }

  macro const T& expect(const char* msg) const
  {
    if (is_null())
    {
      std::cerr << msg << std::endl;
      need(!is_null());
    }
    return _obj;
  }

  macro operator bool () const
  { return !is_null(); }

  macro void drop()
    requires Dropable<T>
  {
    if (!is_null())
      _obj.destroy();
  }
};
#endif // H_OPT

