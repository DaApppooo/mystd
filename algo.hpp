#ifndef H_ALGO
#define H_ALGO
#include "buffer.hpp"
#include "_algo_macros.hpp"
#include "traits.hpp"
#include "array.hpp"
#include <algorithm>
#include <iterator>

// overload of std algorithm with iterable expansion

// Same as std::memmove : UB if dst cannot contain src
template <Iterable I1, Iterable I2> // raw copy
constexpr void copy(I1 dst, I2 const& src)
{ std::copy(src.begin(), src.end(), dst.begin()); }
template <Iterable I> // fill with copies
constexpr void fill(I const& dst, typename I::iterator::value_type x)
  requires Copiable<typename I::iterator::value_type>
{
  for (typename I::iterator::value_type& y : dst)
    y = copy(x);
}
template <Iterable I> // fill with dirty moves
constexpr void fill_raw(I const& dst, typename I::iterator::value_type x)
{ std::fill(dst.begin(), dst.end(), x); }

template <Iterable It, class Func>
constexpr void for_each(It const& it, Func const& func)
{ std::for_each(it.begin(), it.end(), func); }
template <Iterable It, class Func>
constexpr bool all(const It& it, Func const& func)
{ return std::all_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
constexpr bool any(const It& it, Func const& func)
{ return std::any_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
constexpr bool none(const It& it, Func const& func)
{ return std::none_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
constexpr bool in(const It& it, typename It::iterator::value_type x)
  requires Eq<typename It::iterator::value_type>
{
  for (typename It::iterator::value_type& y : it)
    if (y == x)
      return true;
  return false;
}
// O(n) find, returns matching iterator
template <Iterable It>
constexpr It::iterator find(const It& it, typename It::iterator::value_type x)
{
  return std::find(it.begin(), it.end(), x);
}
// O(n) find, returns matching iterator
template <Iterable It, class Pred>
constexpr It::iterator find_if(const It& it, Pred x)
{
  return std::find_if(it.begin(), it.end(), x);
}
// O(n) find, returns matching iterator
template <Iterable It, class Pred>
constexpr It::iterator find_if_not(const It& it, Pred x)
{
  return std::find_if_not(it.begin(), it.end(), x);
}
// O(log(n)) find, returns matching iterator
template <Iterable It>
  requires TotalOrder<std::iter_value_t<typename It::iterator>>
constexpr It::iterator find_ordered(
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

template <class T>
_ALGO_SWAP_DECL(View, T)
template <class T>
_ALGO_SWAP_DECL(HeapBuffer, T)
template <class T, u32 _cap>
_ALGO_SWAP_DECL(StackBuffer, T, _cap)
template <class T, u32 _cap>
_ALGO_SWAP_DECL(Array, T, _cap)

template <class T>
_ALGO_SORT_DECL(View, T)
template <class T>
_ALGO_SORT_DECL(HeapBuffer, T)
template <class T, u32 _cap>
_ALGO_SORT_DECL(StackBuffer, T, _cap)
template <class T, u32 _cap>
_ALGO_SORT_DECL(Array, T, _cap)

template <class T>
_ALGO_MAX_CONST_DECL(View, T, T)
template <class T>
_ALGO_MAX_CONST_DECL(HeapBuffer, T, T)
template <class T, u32 _cap>
_ALGO_MAX_CONST_DECL(StackBuffer, T, T, _cap)
template <class T, u32 _cap>
_ALGO_MAX_CONST_DECL(Array, T, T, _cap)

template <class T>
_ALGO_MAX_DECL(View, T, T)
template <class T>
_ALGO_MAX_DECL(HeapBuffer, T, T)
template <class T, u32 _cap>
_ALGO_MAX_DECL(StackBuffer, T, T, _cap)
template <class T, u32 _cap>
_ALGO_MAX_DECL(Array, T, T, _cap)

template <class T>
_ALGO_MIN_CONST_DECL(View, T, T)
template <class T>
_ALGO_MIN_CONST_DECL(HeapBuffer, T, T)
template <class T, u32 _cap>
_ALGO_MIN_CONST_DECL(StackBuffer, T, T, _cap)
template <class T, u32 _cap>
_ALGO_MIN_CONST_DECL(Array, T, T, _cap)

template <class T>
_ALGO_MIN_DECL(View, T, T)
template <class T>
_ALGO_MIN_DECL(HeapBuffer, T, T)
template <class T, u32 _cap>
_ALGO_MIN_DECL(StackBuffer, T, T, _cap)
template <class T, u32 _cap>
_ALGO_MIN_DECL(Array, T, T, _cap)

#endif
