#ifndef H_ITERS
#define H_ITERS
#include "buffer.hpp"
#include "traits.hpp"
#include "types.hpp"
#include <concepts>

template <std::integral T>
struct FixedRangeIterator
{
  using Self = FixedRangeIterator<T>;
  using value_type = T;
  using iterator = Self;
  T x;
  T end_;
  T step;
  constexpr Self& operator ++ () // ++(int) is auto-impl by traits.hpp
  {
    x += step;
    return *this;
  }
  constexpr Self& operator -- ()
  {
    x -= step;
    return *this;
  }
  constexpr bool operator == (Self other) const
  { return x*step >= other.x*other.step; }
  constexpr T& operator * ()
  { return x; }
  constexpr T& operator * () const
  { return x; }
  constexpr T operator - (Self other) const
  { return x - other.x; }

  constexpr Self begin() const
  { return *this; }
  constexpr Self end() const
  { return { end_, end_, step }; }
  constexpr T len() const
  { return (end_ - x + step - 1)/step; }
};

template <std::integral T>
struct LinkedRangeIterator
{
  using Self = LinkedRangeIterator<T>;
  struct iterator
  {
    using value_type = T;
    T& x;
    T& end_;
    T step;
  
    constexpr iterator operator ++ ()
    {
      iterator ret = *this;
      x += step;
      return ret;
    }
    constexpr iterator operator -- ()
    {
      iterator ret = *this;
      x += step;
      return ret;
    }
    constexpr bool operator == (const iterator other) const
    { return x*step >= other.x*other.step; }

    constexpr T& operator * () const
    { return x; }
    constexpr T& operator * ()
    { return x; }
  };
  T x;
  T& end_;
  T step;
  
  constexpr iterator begin()
  { return iterator{ x, end_, step }; }
  constexpr iterator end()
  { return iterator{ end_, end_, step }; }
  constexpr T len() const
  { return (end_ - x + step - 1)/step; }
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


template <Indexable Idxbl, class BufferUInt>
struct BasicSelection
{
  static_assert(BufferLike<BufferUInt>);
  using Self = BasicSelection<Idxbl, BufferUInt>;
  using index_t = BufferUInt::index_t;
  Idxbl& it;
  BufferUInt indicies;

  struct iterator
  {
    using value_type = typename Idxbl::indexed_type;
    Idxbl& it;
    u32* pt;

    // for comparison, same iterable is assumed
    constexpr bool operator > (iterator it) const
    { return pt > it.pt; }
    constexpr bool operator == (iterator it) const
    { return pt == it.pt; }
    
    constexpr value_type& operator * () const
    { return *it; }
    constexpr value_type& operator * ()
    { return *it; }

    constexpr iterator& operator ++ ()
    { pt++; return *this; }
    
    constexpr iterator& operator -- ()
    { pt--; return *this; }

    constexpr value_type& operator [] (const u32 idx) const
    { return it[pt[idx]]; }
    constexpr value_type& operator [] (const u32 idx)
    { return it[pt[idx]]; }
  };

  static constexpr Self from(Idxbl& idxbl)
  { return { idxbl, BufferUInt::empty() }; }

  // O(n) relative to It
  constexpr Self& all()
  {
    for ()
  }
  
};

template <Indexable T>
using Selection = BasicSelection<T, HeapBuffer<u32>>;

template <class T>
template <class Self_>
  requires std::same_as<Self_, View<T>>
constexpr Selection<const View<T>> View<T>::sel() const
{ return { *this, HeapBuffer<u32>::empty() }; }

template <class T>
template <class Self_>
  requires std::same_as<Self_, View<T>>
constexpr Selection<View<T>> View<T>::sel()
{ return { *this, HeapBuffer<u32>::empty() }; }

template <class T>
template <class Self_>
  requires std::same_as<Self_, HeapBuffer<T>>
constexpr Selection<const HeapBuffer<T>> HeapBuffer<T>::sel() const
{ return { *this, HeapBuffer<u32>::empty() }; }

template <class T>
template <class Self_>
  requires std::same_as<Self_, HeapBuffer<T>>
constexpr Selection<HeapBuffer<T>> HeapBuffer<T>::sel()
{ return { *this, HeapBuffer<u32>::empty() }; }


#endif
