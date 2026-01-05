#ifndef H_TRAITS
#define H_TRAITS
#include "types.hpp"
#include <concepts>
#include <iterator>
#include <type_traits>
#include "macros.hpp"

template <class T>
using remove_ref = std::remove_reference<T>::type;
template <class T>
using remove_const = std::remove_const<T>::type;
template <class T>
using remove_ptr = std::remove_pointer<T>::type;

template <class T>
macro remove_const<T>& to_mut(T& o) { return const_cast<remove_const<T>>(o); }
// to_const is implicit

trait NonPtrIndexable =
   requires { typename T::index_t; }
&& requires { typename T::indexed_type; }
&& std::integral<typename T::index_t>
&& (
   requires (T d, T::index_t i)
    { { d[i] } -> std::same_as<typename T::indexed_type&>; }
|| requires (const T d, const T::index_t i)
    { { d[i] } -> std::same_as<const typename T::indexed_type&>; }
);

trait Indexable =
  NonPtrIndexable<T> || std::is_pointer_v<T>;

trait Primitive =
   std::integral<T>
|| std::floating_point<T>
|| std::same_as<T, bool>
|| std::same_as<T, void>
|| std::is_pointer_v<T>
|| std::same_as<T, std::nullptr_t>;

trait Dropable = requires (T g)
{ { g.drop() }; };
trait _StdMoveable = requires (T& obj)
  { { std::move(obj) }; }
&& !std::is_trivially_move_constructible_v<T>
&& !std::is_trivially_move_assignable_v<T>;
// gives ownership to the output value
// and resets self to the init state
// (grossly equivalent to a rust move)
trait _ImplMove = requires (T& obj)
{ { obj.move() } -> std::same_as<Own<T>>; };
trait Moveable =
   _StdMoveable<T>
|| _ImplMove<T>
|| Primitive<T>;
trait Copiable =
   Primitive<T>
|| requires (const T& d)
{ { d.copy() } -> std::same_as<T>; };
trait _ImplSize = requires (const T o)
  { { o.size() } -> std::convertible_to<std::size_t>; };
trait Sized =
  requires (const T o)
  { { o.len() } -> std::convertible_to<std::size_t>; }
  || _ImplSize<T>;
template <Sized S>
inline macro size_t size(const Ref<S>& c)
{
  // prefer .size (because math::Vec.len != math::Vec.size)
  if macro(_ImplSize<S>)
    return c.size();
  else
    return c.len();
}

template <Dropable D>
inline macro void drop(Own<D>& d) { d.drop(); }
template <Dropable... D>
inline macro void drop(Own<D>&... ds) { (drop(ds), ...); }

template <class C>
inline macro Own<C> copy(const C& c)
{
  if macro(Copiable<C>)
    return c.copy();
  else
    return c;
}

template <Dropable T>
inline macro Own<T> move(Own<T>& o)
{
  if macro(Moveable<T>)
    return o.move();
  else
    return o;
}

trait LessThan = requires (const T a, const T b)
{ {a < b} -> std::same_as<bool>; };
trait GreaterThan = requires (const T a, const T b)
{ {a > b} -> std::same_as<bool>; };
trait PartialOrder = LessThan<T> || GreaterThan<T>;
trait Eq = requires (const T a, const T b)
{ { a == b } -> std::same_as<bool>; };
trait NotEq = requires (const T a, const T b)
{ { a != b } -> std::same_as<bool>; };
trait TotalOrder = std::totally_ordered<T>;
trait Incr = requires (T a)
{ { ++a } -> std::same_as<T&>; };
trait Decr = requires (T a)
{ { ++a } -> std::same_as<T&>; };

template <Incr I>
macro I operator ++ (I& i, int)
{
  const I temp = i;
  ++i;
  return temp;
}
template <Decr I>
macro I operator -- (I& i, int)
{
  const I temp = i;
  --i;
  return temp;
}
template <GreaterThan T>
macro bool operator < (T a, T b)
{ return b > a; }
template <Eq T>
macro bool operator != (T a, T b)
{ return !(a == b); }

trait InputIterator = std::input_iterator<T>;
trait OutputIterator = std::output_iterator<T, typename T::value_type>;

trait ForwardIterator = std::forward_iterator<T>;

trait BidirectionalIterator = std::bidirectional_iterator<T>;

trait RandomAccessIterator = std::random_access_iterator<T>;

trait Iterator =
   std::is_pointer_v<T>
|| InputIterator<T>
|| OutputIterator<T> /* all iterators require one of these three */;

trait Iterable =
  requires (remove_ref<T> i)
{
  requires Iterator<typename remove_ref<T>::iterator>;
  { i.begin() } -> std::same_as<typename remove_ref<T>::iterator>;
  { i.end() } -> std::same_as<typename remove_ref<T>::iterator>;
};

template <Iterable It>
struct _iterable_value_type;
template <Iterable It>
  requires (!std::is_pointer_v<typename remove_ref<It>::iterator>)
struct _iterable_value_type<It>
{ using type = remove_ref<It>::iterator::value_type; };
template <Iterable It>
  requires (std::is_pointer_v<typename remove_ref<It>::iterator>)
struct _iterable_value_type<It>
{ using type = remove_ptr<typename remove_ref<It>::iterator>; };
template <Iterable It>
  requires (!std::is_pointer_v<typename It::iterator>)
struct _iterable_value_type<It>
{ using type = It::iterator::value_type; };
template <Iterable It>
using iterable_value_type = _iterable_value_type<It>::type;

template <class T, class Ret, class... Args>
concept Callable = requires (T a, Args... args)
{
  { a(args...) } -> std::same_as<Ret>;
};

#endif
