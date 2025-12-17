#ifndef H_ALGO
#define H_ALGO
#include "_algo_macros.hpp"
#include "traits.hpp"
#include <algorithm>
#include <iterator>

// overload of std algorithm with iterable expansion

// Same as std::memmove : UB if dst cannot contain src
template <Iterable I1, Iterable I2> // raw copy
macro void clone(I1& dst, const I2& src)
{ std::copy(src.begin(), src.end(), dst.begin()); }
template <Iterable I1, Iterable I2>
macro void copy(I1& dst, const I2& src) // "deep" copy
{
  std::copy(src.begin(), src.end(), dst.begin());
  for (auto& obj : dst)
    if macro(Copiable<decltype(obj)>)
      obj = obj.copy();
}
template <Iterable I> // fill with copies
macro void fill(I const& dst, typename I::iterator::value_type x)
  requires Copiable<typename I::iterator::value_type>
{
  for (typename I::iterator::value_type& y : dst)
    y = copy(x);
}
template <Iterable I> // fill with dirty moves
macro void fill_raw(I const& dst, typename I::iterator::value_type x)
{ std::fill(dst.begin(), dst.end(), x); }

template <Iterable It, class Func>
macro void for_each(It const& it, Func const& func)
{ std::for_each(it.begin(), it.end(), func); }
template <Iterable It, class Func>
macro bool all(const It& it, Func const& func)
{ return std::all_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
macro bool any(const It& it, Func const& func)
{ return std::any_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
macro bool none(const It& it, Func const& func)
{ return std::none_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
macro bool in(const It& it, typename It::iterator::value_type x)
  requires Eq<typename It::iterator::value_type>
{
  for (typename It::iterator::value_type& y : it)
    if (y == x)
      return true;
  return false;
}
// O(n) find, returns matching iterator
template <Iterable It>
macro It::iterator find(const It& it, typename It::iterator::value_type x)
{
  return std::find(it.begin(), it.end(), x);
}
// O(n) find, returns matching iterator
template <Iterable It, class Pred>
macro It::iterator find_if(const It& it, Pred x)
{
  return std::find_if(it.begin(), it.end(), x);
}
// O(n) find, returns matching iterator
template <Iterable It, class Pred>
macro It::iterator find_if_not(const It& it, Pred x)
{
  return std::find_if_not(it.begin(), it.end(), x);
}
// O(log(n)) find, returns matching iterator
template <Iterable It>
  requires TotalOrder<std::iter_value_t<typename It::iterator>>
macro It::iterator find_ordered(
  const It& it,
  std::iter_value_t<typename It::iterator> x
) {
  typename It::iterator b = it.begin();
  typename It::iterator e = it.end();
  --e;
  while (*b < *e)
  {
    if (*b == x)
      return b;
    else if (*e == x)
      return e;
    const typename It::iterator m = b+(e-b)/2;
    if (*m == x)
      return m;
    else if (*m < x)
    {
      b = m;
      ++b;
      --e;
    }
    else
    {
      e = m;
      --e;
      ++b;
    }
  }
  return it.end();
}

#endif
