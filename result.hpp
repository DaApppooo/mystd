#ifndef H_RESULT
#define H_RESULT

#include "macros.hpp"
#include "traits.hpp"
#include "enum.hpp"
#include <concepts>
#include <iostream>
#include <memory>

template <class Ok_, class Err_>
struct Result;

template <class T>
struct Ok
{
  T _t;
  macro T& operator * () { return _t; }
  macro T* operator -> () { return &_t; }
  macro const T& operator * () const { return _t; }
  macro const T* operator -> () const { return &_t; }
};
template <class T>
struct Err
{
  T _t;
  macro T& operator * () { return _t; }
  macro T* operator -> () { return &_t; }
  macro const T& operator * () const { return _t; }
  macro const T* operator -> () const { return &_t; }
};

template <class Ok_, class Err_>
  requires (!std::same_as<Ok_, Err_>)
struct Result<Ok_, Err_>
{
  using Self = Result<Ok_, Err_>;
  union
  {
    Ok_ ok;
    Err_ err;
  };
  enum _Type { OK, ERR }
    type;

  macro Result() {}
  macro Result(const Self& other)
  { switch (type=other.type) {
    case OK: std::construct_at(&ok, other.ok); break;
    case ERR: std::construct_at(&err, other.err); break; } }
  macro Result(Self&& other)
  { switch (type=other.type) {
    case OK: std::construct_at(&ok, other.ok); break;
    case ERR: std::construct_at(&err, other.err); break; } }
  macro Result(const _DefaultType&) : err(), type(ERR) {}
  macro Result(const Ok_& ok_)
    : ok(ok_), type(OK) {}
  macro Result(const Err_& err_)
    : err(err_), type(ERR) {}
  macro Result(const Ok<Ok_>& ok_)
    : ok(ok_._t), type(OK) {}
  macro Result(const Err<Err_>& err_)
    requires (!std::same_as<Ok_, Err_>)
    : err(err_._t), type(ERR) {}

  macro operator bool () const { return type == OK; }

  template <class T>
    requires std::same_as<T, Ok_>
  macro const Ok_& get() const
  { need(type == OK); return ok; }
  template <class T>
    requires std::same_as<T, Err_>
  macro const Err_& get() const { need(type == ERR); return err; }
  template <class T>
    requires std::same_as<T, Ok_>
  macro Ok_& get() { need(type == OK); return ok; }
  template <class T>
    requires std::same_as<T, Err_>
  macro Err_& get() { need(type == ERR); return err; }
  template <class T>
    requires std::same_as<T, Ok_>
  macro bool is() const { return type == OK; }
  template <class T>
    requires std::same_as<T, Err_>
  macro bool is() const { return type == ERR; }

  template <template <class U> class T>
    requires std::same_as<T<Ok_>, Ok<Ok_>>
  macro const Ok_& get() const { need(type == OK); return ok; };
  template <template <class U> class T>
    requires std::same_as<T<Err_>, Err<Err_>>
  macro const Err_& get() const { need(type == ERR); return err; };
  template <template <class U> class T>
    requires std::same_as<T<Ok_>, Ok<Ok_>>
  macro Ok_& get() { need(type == OK); return ok; };
  template <template <class U> class T>
    requires std::same_as<T<Err_>, Err<Err_>>
  macro Err_& get() { need(type == ERR); return err; };
  

  // === FETCH === //
  template <class R, class F1, class F2>
    requires (
       !std::is_same_v<R, void>
    && match_callables_const<_enum_utils::CallableSet<F1, F2>,
                             R, Ok_, Err_>()
    )
  macro R fetch(F1&& a, F2&& b) const
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: return c(ok);
      case ERR: return c(err); }
  }
  template <class R, class F1, class F2>
    requires (
       !std::is_same_v<R, void>
    && match_callables<_enum_utils::CallableSet<F1, F2>,
                             R, Ok_, Err_>()
    )
  macro R fetch(F1&& a, F2&& b)
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: return c(ok);
      case ERR: return c(err); }
  }
  template <class R, class F1, class F2>
    requires (
       !std::is_same_v<R, void>
    && match_callables_const<_enum_utils::CallableSet<F1, F2>,
                             R, Ok<Ok_>, Err<Err_>>()
    )
  macro R fetch(F1&& a, F2&& b) const
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: return c(*reinterpret_cast<const Ok<Ok_>*>(&ok));
      case ERR: return c(*reinterpret_cast<const Err<Err_>*>(&ok)); }
  }
  template <class R, class F1, class F2>
    requires (
       !std::is_same_v<R, void>
    && match_callables<_enum_utils::CallableSet<F1, F2>,
                             R, Ok<Ok_>, Err<Err_>>()
    )
  macro R fetch(F1&& a, F2&& b)
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: return c(*reinterpret_cast<Ok<Ok_>*>(&ok));
      case ERR: return c(*reinterpret_cast<Err<Err_>*>(&ok)); }
  }

  // === MATCH === //
  template <class F1, class F2>
    requires (
      match_callables_const<_enum_utils::CallableSet<F1, F2>,
                             void, Ok_, Err_>()
    )
  macro void match(F1&& a, F2&& b) const
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: c(ok); break;
      case ERR: c(err); break; }
  }
  template <class F1, class F2>
    requires (
      match_callables<_enum_utils::CallableSet<F1, F2>,
                             void, Ok_, Err_>()
    )
  macro void match(F1&& a, F2&& b)
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: c(ok); break;
      case ERR: c(err); break; }
  }
  template <class F1, class F2>
    requires (
      match_callables_const<_enum_utils::CallableSet<F1, F2>,
                             void, Ok<Ok_>, Err<Err_>>()
    )
  macro void match(F1&& a, F2&& b) const
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: c(*reinterpret_cast<const Ok<Ok_>*>(&ok)); break;
      case ERR: c(*reinterpret_cast<const Err<Err_>*>(&ok)); break; }
  }
  template <class F1, class F2>
    requires (
      match_callables<_enum_utils::CallableSet<F1, F2>,
                             void, Ok<Ok_>, Err<Err_>>()
    )
  macro void match(F1&& a, F2&& b)
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: c(*reinterpret_cast<Ok<Ok_>*>(&ok)); break;
      case ERR: c(*reinterpret_cast<Err<Err_>*>(&ok)); break; }
  }

  // unwraps and expects
  macro const Ok_& unwrap() const { need(type == OK); return ok; }
  macro Ok_& unwrap() { need(type == OK); return ok; }
  macro const Ok_& expect(const char* msg) const
  { if (type == OK) return ok;
    std::cerr << msg << std::endl; need(type == OK); }
  macro Ok_& expect(const char* msg)
  { if (type == OK) return ok;
    std::cerr << msg << std::endl; need(type == OK); }

  macro Own<Result<Ok_, Err_>> copy() const
  {
    switch (type) {
    case OK:
      if macro(Copiable<Ok_>)
        return Ok(ok.copy());
      else
        return Ok(ok);
      break;
    case ERR:
      if macro(Copiable<Err_>)
        return Err(err.copy());
      else
        return Err(err);
      break;
    }
  }
  macro Own<Result<Ok_, Err_>> move()
  {
    switch (type) {
    case OK:
      if macro(Moveable<Ok_>)
        return Ok(ok.move());
      else
        return Ok(ok);
      break;
    case ERR:
      if macro(Moveable<Err_>)
        return Err(err.move());
      else
        return Err(err);
      break;
    }
  }

  macro void drop()
  { switch (type) {
    case OK: if macro(Dropable<Ok_>) ok.drop(); break;
    case ERR: if macro(Dropable<Err_>) err.drop(); break; } }

};

template <class Ok_, class Err_>
  requires std::same_as<Ok_, Err_>
struct Result<Ok_, Err_>
{
  using Self = Result<Ok_, Err_>;
  union
  {
    Ok_ ok;
    Err_ err;
  };
  enum _Type { OK, ERR }
    type;

  macro Result() {}
  macro Result(const Self& other)
  { switch (type=other.type) {
    case OK: std::construct_at(&ok, other.ok); break;
    case ERR: std::construct_at(&err, other.err); break; } }
  macro Result(Self&& other)
  { switch (type=other.type) {
    case OK: std::construct_at(&ok, other.ok); break;
    case ERR: std::construct_at(&err, other.err); break; } }
  macro Result(const _DefaultType&) : err(), type(ERR) {}
  macro Result(const Ok<Ok_>& ok_)
    : ok(ok_._t), type(OK) {}
  macro Result(const Err<Err_>& err_)
    requires (!std::same_as<Ok_, Err_>)
    : err(err_._t), type(ERR) {}

  template <template <class U> class T>
    requires std::same_as<T<Ok_>, Ok<Ok_>>
  macro const Ok_& get() const { need(type == OK); return ok; };
  template <template <class U> class T>
    requires std::same_as<T<Err_>, Err<Err_>>
  macro const Err_& get() const { need(type == ERR); return err; };

  macro operator bool () const { return type == OK; }


  // === FETCH === //
  template <class R, class F1, class F2>
    requires (
       !std::is_same_v<R, void>
    && match_callables_const<_enum_utils::CallableSet<F1, F2>,
                             R, Ok<Ok_>, Err<Err_>>()
    )
  macro R fetch(F1&& a, F2&& b) const
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: return c(*reinterpret_cast<const Ok<Ok_>*>(&ok));
      case ERR: return c(*reinterpret_cast<const Err<Err_>*>(&ok)); }
  }
  template <class R, class F1, class F2>
    requires (
       !std::is_same_v<R, void>
    && match_callables<_enum_utils::CallableSet<F1, F2>,
                             R, Ok<Ok_>, Err<Err_>>()
    )
  macro R fetch(F1&& a, F2&& b)
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: return c(*reinterpret_cast<Ok<Ok_>*>(&ok));
      case ERR: return c(*reinterpret_cast<Err<Err_>*>(&ok)); }
  }

  // === MATCH === //
  template <class F1, class F2>
    requires (
      match_callables_const<_enum_utils::CallableSet<F1, F2>,
                             void, Ok<Ok_>, Err<Err_>>()
    )
  macro void match(F1&& a, F2&& b) const
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: c(*reinterpret_cast<const Ok<Ok_>*>(&ok)); break;
      case ERR: c(*reinterpret_cast<const Err<Err_>*>(&ok)); break; }
  }
  template <class F1, class F2>
    requires (
      match_callables<_enum_utils::CallableSet<F1, F2>,
                             void, Ok<Ok_>, Err<Err_>>()
    )
  macro void match(F1&& a, F2&& b)
  {
    const auto c = _enum_utils::CallableSet<F1, F2>{a, b};
    switch (type)
    { case OK: c(*reinterpret_cast<Ok<Ok_>*>(&ok)); break;
      case ERR: c(*reinterpret_cast<Err<Err_>*>(&ok)); break; }
  }
  
  // unwraps and expects
  macro const Ok_& unwrap() const { need(type == OK); return ok; }
  macro Ok_& unwrap() { need(type == OK); return ok; }
  macro const Ok_& expect(const char* msg) const
  { if (type == OK) return ok;
    std::cerr << msg << std::endl; need(type == OK); }
  macro Ok_& expect(const char* msg)
  { if (type == OK) return ok;
    std::cerr << msg << std::endl; need(type == OK); }

  macro Own<Result<Ok_, Err_>> copy() const
  {
    switch (type) {
    case OK:
      if macro(Copiable<Ok_>)
        return Ok(ok.copy());
      else
        return Ok(ok);
      break;
    case ERR:
      if macro(Copiable<Err_>)
        return Err(err.copy());
      else
        return Err(err);
      break;
    }
  }
  macro Own<Result<Ok_, Err_>> move()
  {
    switch (type) {
    case OK:
      if macro(Moveable<Ok_>)
        return Ok(ok.move());
      else
        return Ok(ok);
      break;
    case ERR:
      if macro(Moveable<Err_>)
        return Err(err.move());
      else
        return Err(err);
      break;
    }
  }
  
  macro void drop()
  { switch (type) {
    case OK: if macro(Dropable<Ok_>) ok.drop(); break;
    case ERR: if macro(Dropable<Err_>) err.drop(); break; } }
  macro void drop() const
  { switch (type) {
    case OK: if macro(Dropable<const Ok_>) ok.drop(); break;
    case ERR: if macro(Dropable<const Err_>) err.drop(); break; } }
};

template <class Ok_, class Err_>
struct Ok<Result<Ok_, Err_>>
{
  Result<Ok_, Err_> res;
  macro operator bool () const { return res.type == Result<Ok_, Err_>::OK; }
};
template <class Ok_, class Err_>
struct Err<Result<Ok_, Err_>>
{
  Result<Ok_, Err_> res;
  macro operator bool () const { return res.type == Result<Ok_, Err_>::ERR; }
};


#endif
