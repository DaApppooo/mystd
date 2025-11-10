#ifndef H_ITERS
#define H_ITERS
#include "list.hpp"
#include <concepts>

template <std::integral T>
struct FixedRangeIterator
{
  using Self = FixedRangeIterator<T>;
  using value_type = T;
  T x;
  T end_;
  T step;
  constexpr Self operator ++ ()
  {
    Self ret = *this;
    x += step;
    return ret;
  }
  constexpr Self operator -- ()
  {
    Self ret = *this;
    x -= step;
    return ret;
  }
  constexpr bool operator == (Self other) const
  { return x*step < other.x*other.step; }
  constexpr T& operator * ()
  { return x; }
  constexpr T& operator * () const
  { return x; }

  constexpr Self begin() const
  { return *this; }
  constexpr Self end() const
  { return { end_, end_, step }; }
};

template <std::integral T>
struct LinkedRangeIterator
{
  using Self = LinkedRangeIterator<T>;
  using value_type = T;
  struct iterator
  {
    T& x;
    T& end_;
    T step;
  
    constexpr Self operator ++ ()
    {
      Self ret = *this;
      x += step;
      return ret;
    }
    constexpr Self operator -- ()
    {
      Self ret = *this;
      x += step;
      return ret;
    }
    constexpr bool operator == (Self other) const
    { return x*step >= other.x*other.step; }

    constexpr T& operator * () const
    { return x; }
    constexpr T& operator * ()
    { return x; }
  };
  T x;
  T& end_;
  T step;
  
  constexpr iterator begin() const
  { return iterator{ x, end_, step }; }
  constexpr iterator end()
  { return iterator{ end_, end_, step }; }
};

template <std::integral T = i32>
FixedRangeIterator<T> range(T&& count)
{ return {0, count, 1}; }
template <std::integral T = i32>
FixedRangeIterator<T> range(const T begin, T&& end)
{ return {begin, end, 1}; }
template <std::integral T = i32>
FixedRangeIterator<T> range(const T begin, T&& end, const T step)
{ return {begin, end, step}; }
template <std::integral T = i32>
LinkedRangeIterator<T> range(T& count)
{ return LinkedRangeIterator<T>{0, count, 1}; }
template <std::integral T = i32>
LinkedRangeIterator<T> range(const T begin, T& end)
{ return {begin, end, 1}; }
template <std::integral T = i32>
LinkedRangeIterator<T> range(const T begin, T& end, const T step)
{ return {begin, end, step}; }

#endif
