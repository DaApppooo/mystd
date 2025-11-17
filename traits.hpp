#ifndef H_TRAITS
#define H_TRAITS
#include "types.hpp"
#include <concepts>
#include <type_traits>
#include "macros.hpp"

trait NonPtrIndexable =
   requires { typename T::index_t; }
&& requires { typename T::Indexed; }
&& std::integral<typename T::index_t>
&& requires (T d, T::index_t i)
{
  { d[i] } -> std::same_as<typename T::Indexed&>;
};

trait Indexable =
  NonPtrIndexable<T> || std::is_pointer_v<T>;

trait Primitive =
   std::integral<T>
|| std::floating_point<T>
|| std::same_as<T, bool>
|| std::same_as<T, void>
|| std::is_pointer_v<T>
|| std::same_as<T, std::nullptr_t>;

// gives ownership to the output value
// and resets self to the init state
// (grossly equivalent to a rust move)
trait NonPrimDropable = requires (T g)
{ { g.drop() } -> std::same_as<Own<T>>; };
trait Dropable =
  Primitive<T>
  || NonPrimDropable<T>;
trait Destroyable = requires (T d)
{ d.destroy(); };
trait Copiable =
   Primitive<T>
|| requires (const T& d)
{ { d.copy() } -> std::same_as<T>; };
trait Sized = requires (const T o)
{ { o.len() } -> std::convertible_to<std::size_t>; };

template <Copiable C>
constexpr Own<C> copy(const Own<C>& c)
{
  if constexpr(Primitive<C>)
    return c;
  else
    return c.copy();
}

template <Dropable T>
constexpr Own<T> drop(Own<T>& o)
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
{ { ++a } -> std::same_as<T>; };

template <Incr I>
constexpr I operator ++ (I& i, int)
{
  const I temp = i;
  ++i;
  return temp;
}
template <GreaterThan T>
constexpr bool operator < (T a, T b)
{ return b > a; }
template <Eq T>
constexpr bool operator != (T a, T b)
{ return !(a == b); }

trait InputIterator = Eq<T> && requires(T i)
{
  { *i } -> std::convertible_to<typename T::value_type>;
  { i++ } -> std::same_as<T>;
};

trait OutputIterator = requires(T i)
{
  { *i };
  { i-- } -> std::same_as<T>;
};

trait ForwardIterator = Eq<T> && requires(T i)
{
  { *i } -> std::convertible_to<typename T::value_type&>;
  { i++ } -> std::same_as<T>;
};

trait BidirectionalIterator = Eq<T> && requires(T i, T j)
{
  { *i } -> std::convertible_to<typename T::value_type&>;
  { i++ } -> std::same_as<T>;
  { i-- } -> std::same_as<T>;
};

trait RandomAccessIterator =
   TotalOrder<T>
&& requires(T i, T j, int idx)
{
  { *i } -> std::convertible_to<typename T::value_type&>;
  { i++ } -> std::same_as<T>;
  { i-- } -> std::same_as<T>;
  { i[idx] };
};

trait Iterator =
   InputIterator<T>
|| OutputIterator<T>
|| ForwardIterator<T>
|| BidirectionalIterator<T>
|| RandomAccessIterator<T>;

trait Iterable = requires (T i)
{
  requires Iterator<typename T::iterator>;
  { i.begin() } -> std::same_as<typename T::iterator>;
  { i.end() } -> std::same_as<typename T::iterator>;
};




#endif
