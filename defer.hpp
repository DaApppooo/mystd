#ifndef H_DEFER
#define H_DEFER

#include "traits.hpp"
template <Callable<void> Func>
struct Defered
{
  const Func func;
  macro ~Defered() { func(); }
};

struct _DefererObject {};

template <Callable<void> Func>
macro Defered<Func> operator % (const _DefererObject, Func&& func)
{ return Defered<Func>(func); }

#define defer auto defer_at_line_##__COUNT__ = _DefererObject{} %

#endif
