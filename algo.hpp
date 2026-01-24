#ifndef H_ALGO
#define H_ALGO
#include "_algo_macros.hpp"
#include "traits.hpp"
#include "list.hpp"
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

template <Iterable Out, Iterable In, class Func>
macro void map_into(Out& out, In const& in, Func const& func)
{
  using OutIter = Out::iterator;
  using InIter = prefer_const_iterator<In>;
  OutIter o = out.begin();
  InIter i = in.begin();
  while ( o != out.end() && i != in.end() )
  { *o = func(*i); ++o; ++i; }
}
template <Iterable Out, Iterable In, class Func>
macro Out::iterator filter_into(Out& out, In const& in, Func const& func)
{
  using OutIter = Out::iterator;
  using InIter = prefer_const_iterator<In>;
  OutIter o = out.begin();
  InIter i = in.begin();
  while ( o != out.end() && i != in.end() )
  {
    if (func(*i))
    {
      *o = *i;
      ++o;
    }
    ++i;
  }
  return o;
}
template <Iterable It>
macro u32 count(iterable_value_type<It> x, const It& it)
{
  u32 i = 0;
  for (let& y : it)
    if (x == y)
      i++;
  return i;
}
template <Iterable It, class Func>
macro u32 count(Func const& func, const It& it)
{
  u32 i = 0;
  for (let& y : it)
    if (func(y))
      i++;
  return i;
}

template<typename Ret, typename Arg, typename... Rest>
Arg _first_argument_helper(Ret(*) (Arg, Rest...));

template<typename Ret, typename F, typename Arg, typename... Rest>
Arg _first_argument_helper(Ret(F::*) (Arg, Rest...));

template<typename Ret, typename F, typename Arg, typename... Rest>
Arg _first_argument_helper(Ret(F::*) (Arg, Rest...) const);

template <typename F>
decltype(_first_argument_helper(&F::operator())) _first_argument_helper(F);

template <typename T>
using first_arg_type = decltype(_first_argument_helper(std::declval<T>()));

template <class F>
struct _maprpipe
{
  F _f;
  using atype = first_arg_type<F>;
  using rtype = std::invoke_result_t<F, atype>;
};
template <class F>
struct _filterrpipe
{
  F _f;
  using atype = first_arg_type<F>;
  using rtype = std::invoke_result_t<F, atype>;
};

macro struct _Map {
  template <Iterable It, class Func>
  macro void operator () (It& it, Func const& func) const
  { std::for_each(it.begin(), it.end(), func); }
  template <Iterable It, class Func>
  macro void operator () (It&& it, Func const& func) const
  {
    std::for_each(it.begin(), it.end(), func);
    if macro(Dropable<It>)
      it.drop();
  }
  template <TupleLike Tuple, class Func>
  macro auto operator () (Tuple&& tp, Func const& func) const
  {
    let a = [&func](auto&& arg){
      if constexpr(std::is_same<decltype(func(arg)),void>::value)
      { // if func returns void
        func(arg);
        return '\x00';
      }
      else
        return func(arg);
    };
    let b = [&a](auto&&... arg){ return std::tuple(a(arg)...); };
    return std::apply(b, std::forward<Tuple>(tp));
  }
  template <class Func>
  macro auto operator () (Func const& func) const
  { return _maprpipe(func); }
} map;
macro struct _Filter {
  template <Iterable It, class Func>
  macro It::iterator operator () (It& it, Func const& func) const
  { filter_into(it, it, func); }
  template <Iterable It, class Func>
  macro It::iterator operator () (It&& it, Func const& func) const
  { filter_into(it, it, func); }
  template <class Func>
  macro auto operator () (Func const& func) const
  { return _filterrpipe(func); }
} filter;

template <Iterable It, class F>
  requires Sized<It>
macro auto operator | (It& it, _maprpipe<F> obj)
{
  mut span = Span<typename _maprpipe<F>::rtype>::alloc(size(it));
  map_into(span, it, obj._f);
  return span;
}
template <Iterable Cont, class F>
macro auto operator | (
  Cont&& it,
  _maprpipe<F> obj
) {
  using O = typename _maprpipe<F>::rtype;
  using I = iterable_value_type<Cont>;
  if macro(sizeof(O) <= sizeof(I) && ImplAs<Cont, O>)
  {
    mut result = it.template as<O>();
    map_into(result, it, obj._f);
    return result;
  }
  else
  {
    mut span = Span<O>::alloc(size(it));
    map_into(span, it, obj._f);
    if macro(Dropable<Cont>)
      it.drop();
    return span;
  }
}
template <Iterable It, class F>
  requires Sized<It>
macro auto operator | (It& it, _filterrpipe<F> obj)
{
  const u32 total = count(obj._f, it);
  mut span = Span<typename _filterrpipe<F>::atype>::alloc(total);
  filter_into(span, it, obj._f);
  return span;
}
template <Iterable Cont, class F>
macro auto operator | (
  Cont&& it,
  _filterrpipe<F> obj
) {
  using I = iterable_value_type<Cont>;
  using O = I;
  if macro(ImplResize<Cont>)
  {
    let end = filter_into(it, it, obj._f);
    it.len(end - it.begin());
    return it;
  }
  else
  {
    const u32 total = count(obj._f, it);
    mut span = Span<O>::alloc(total);
    filter_into(span, it, obj._f);
    if macro(Dropable<Cont>)
      it.drop();
    return span;
  }
}

template <Iterable It, class Func>
macro bool all(const It& it, Func const& func)
{ return std::all_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
macro bool any(const It& it, Func const& func)
{ return std::any_of(it.begin(), it.end(), func); }
template <Iterable It, class Func>
macro bool none(const It& it, Func const& func)
{ return std::none_of(it.begin(), it.end(), func); }
template <Iterable It>
macro bool in(iterable_value_type<It> x, const It& it)
  requires Eq<iterable_value_type<It>>
{
  for (let& y : it)
    if (y == x)
      return true;
  return false;
}
// O(n) find, returns matching iterator
template <Iterable It>
macro It::iterator find(const It& it, iterable_value_type<It> x)
{
  return std::find(it.begin(), it.end(), x);
}
// O(n) find, returns matching index, -1 on failure
template <Iterable It>
macro i32 find(const It& it, iterable_value_type<It> x)
{
  i32 i = 0;
  for (let y : it)
  {
    if (x == y)
      return i;
    ++i;
  }
  return -1;
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
