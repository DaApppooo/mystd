#ifndef H_WRAPPER
#define H_WRAPPER
#include "macros.hpp"
#include "traits.hpp"
#include <concepts>
#include <exception>
#include <memory>
#include "result.hpp"

template <class T>
struct ValueWrapper
{
  T _t;
  macro T& operator * () { return _t; }
  macro T* operator -> () { return &_t; }
  macro const T& operator * () const { return _t; }
  macro const T* operator -> () const { return &_t; }
};

template <class T>
struct FromSTL
{
  using Self = FromSTL<T>;
  char _obj[sizeof(T)];
  macro T& operator * () { return *reinterpret_cast<T*>(_obj); }
  macro T* operator -> () { return reinterpret_cast<T*>(_obj); }
  macro const T& operator * () const { return *reinterpret_cast<T*>(_obj); }
  macro const T* operator -> () const { return reinterpret_cast<T*>(_obj); }
  static macro Self init()
  { Self self; std::construct_at(&*self); return self; }
  static macro Self wrap(T&& obj)
  {
    Self self;
    std::construct_at(reinterpret_cast<T*>(self._obj), obj);
    return self;
  }
  template <class U>
  static macro Self from(const U& convert)
  { Self self; std::construct_at(&*self, convert); return self; }
  macro Own<Self> copy() const
    requires std::copy_constructible<T>
  { Self self; std::construct_at(&*self, **this); return self; }
  macro Own<Self> move()
    requires std::move_constructible<T>
  { Self self; std::construct_at(&*self, std::move(**this)); return self; }
  macro void drop()
  { (*this)->~T(); }
};

template <class T>
struct ToSTL
{
  using Self = ToSTL<T>;
  T _obj;
  macro T& operator * () { return _obj; }
  macro T* operator -> () { return &_obj; }
  macro const T& operator * () const { return _obj; }
  macro const T* operator -> () const { return &_obj; }
  macro ToSTL()
  { _obj = T::init(); }
  template <class U>
  macro ToSTL(const U& convert)
  { _obj = T::from(convert); }
  macro ToSTL(const Self& cpy)
    requires Copiable<T>
  { _obj = cpy._obj.copy(); }
  macro ToSTL(Self&& mv)
    requires Moveable<T>
  { _obj = mv._obj.move(); }
  template <class U>
  macro Self& operator = (const U& convert)
  { _obj = T::from(convert); return *this; }
  macro Self& operator = (const Self& cpy)
    requires Copiable<T>
  { _obj = cpy._obj.copy(); return *this; }
  macro Self& operator = (Self&& mv)
    requires Moveable<T>
  { _obj = mv._obj.move(); return *this; }
  macro ~ToSTL()
  { if macro(Dropable<T>) _obj.drop(); }
};

using STLException = FromSTL<std::exception>;

template <class R, class... A>
macro Result<R, STLException> safe_call(
  const Callable<R, A...> auto&& func,
  A... args
) {
  try
  {
    return Ok(func(args...));
  }
  catch (std::exception exc)
  {
    return Err(STLException::wrap(std::move(exc)));
  }
}


#endif
