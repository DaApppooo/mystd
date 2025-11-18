#ifndef H_TRAITS
#define H_TRAITS
#include "types.hpp"
#include <concepts>
#include <iterator>
#include <type_traits>
#include "macros.hpp"

trait NonPtrIndexable =
   requires { typename T::index_t; }
&& requires { typename T::indexed_type; }
&& std::integral<typename T::index_t>
&& requires (T d, T::index_t i)
{
  { d[i] } -> std::same_as<typename T::indexed_type&>;
};

trait Indexable =
  NonPtrIndexable<T> || std::is_pointer_v<T>;


// gives ownership to the output value
// and resets self to the init state
// (grossly equivalent to a rust move)
trait NonPrimDropable = requires (T g)
{ { g.drop() } -> std::same_as<Own<T>>; };
trait Dropable =
  std::integral<T>
  || std::floating_point<T>
  || std::same_as<T, bool>
  || NonPrimDropable<T>;
trait Destroyable = requires (T d)
{ d.destroy(); };
trait Copiable = requires (const T d)
{ { d.copy() } -> std::same_as<T>; };
trait Sized = requires (const T o)
{ { o.len() } -> std::convertible_to<std::size_t>; };

template <Dropable T>
Own<T> drop(Own<T>& o)
{
  if constexpr(NonPrimDropable<T>)
    return o.drop();
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
constexpr I operator ++ (I& i, int)
{
  const I temp = i;
  ++i;
  return temp;
}
template <Decr I>
constexpr I operator -- (I& i, int)
{
  const I temp = i;
  --i;
  return temp;
}
template <GreaterThan T>
constexpr bool operator < (T a, T b)
{ return b > a; }
template <Eq T>
constexpr bool operator != (T a, T b)
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
  std::is_pointer_v<T>
  || requires (T i)
{
  requires Iterator<typename T::iterator>;
  { i.begin() } -> std::same_as<typename T::iterator>;
  { i.end() } -> std::same_as<typename T::iterator>;
};

#endif
