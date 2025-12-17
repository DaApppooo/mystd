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
  macro Self& operator ++ () // ++(int) is auto-impl by traits.hpp
  {
    x += step;
    return *this;
  }
  macro Self& operator -- ()
  {
    x -= step;
    return *this;
  }
  macro bool operator == (Self other) const
  { return x*step >= other.x*other.step; }
  macro T& operator * ()
  { return x; }
  macro T& operator * () const
  { return x; }
  macro T operator - (Self other) const
  { return x - other.x; }

  macro Self begin() const
  { return *this; }
  macro Self end() const
  { return { end_, end_, step }; }
  macro T len() const
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
  
    macro iterator operator ++ ()
    {
      iterator ret = *this;
      x += step;
      return ret;
    }
    macro iterator operator -- ()
    {
      iterator ret = *this;
      x += step;
      return ret;
    }
    macro bool operator == (const iterator other) const
    { return x*step >= other.x*other.step; }

    macro T& operator * () const
    { return x; }
    macro T& operator * ()
    { return x; }
  };
  T x;
  T& end_;
  T step;
  
  macro iterator begin()
  { return iterator{ x, end_, step }; }
  macro iterator end()
  { return iterator{ end_, end_, step }; }
  macro T len() const
  { return (end_ - x + step - 1)/step; }
};

template <std::integral T = i32>
macro FixedRangeIterator<T> range(T&& count)
{ return {0, count, 1}; }
template <std::integral T = i32>
macro FixedRangeIterator<T> range(const T begin, T&& end)
{ return {begin, end, 1}; }
template <std::integral T = i32>
macro FixedRangeIterator<T> range(const T begin, T&& end, const T step)
{ return {begin, end, step}; }
template <std::integral T = i32>
macro LinkedRangeIterator<T> range(T& count)
{ return LinkedRangeIterator<T>{0, count, 1}; }
template <std::integral T = i32>
macro LinkedRangeIterator<T> range(const T begin, T& end)
{ return {begin, end, 1}; }
template <std::integral T = i32>
macro LinkedRangeIterator<T> range(const T begin, T& end, const T step)
{ return {begin, end, step}; }

// python's zip
template <Iterable... Iterables> 
struct ZipIterable
{
  std::tuple<Iterables...> iterables;

  struct iterator
  {
    ZipIterable<Iterables...>& parent;
    std::tuple<typename Iterables::iterator...> iterators;
    bool finished; // just a tiny bitty flag to make things so much easier
    
    
  };
  
};

template <Iterable... Its>
macro ZipIterable<Its...> zip(Its&... its)
{
  
}

template <Indexable It, class BufferUInt>
struct BasicSelection
{
  static_assert(BufferLike<BufferUInt>);
  using Self = BasicSelection<It, BufferUInt>;
  using index_t = BufferUInt::index_t;
  It& it;
  BufferUInt indicies;

  struct iterator
  {
    using value_type = typename It::indexed_type;
    It& it;
    u32* pt;

    // for comparison, same iterable is assumed
    macro bool operator > (iterator it) const
    { return pt > it.pt; }
    macro bool operator == (iterator it) const
    { return pt == it.pt; }
    
    macro value_type& operator * () const
    { return *it; }
    macro value_type& operator * ()
    { return *it; }

    macro iterator& operator ++ ()
    { pt++; return *this; }
    
    macro iterator& operator -- ()
    { pt--; return *this; }

    macro value_type& operator [] (const u32 idx) const
    { return it[pt[idx]]; }
    macro value_type& operator [] (const u32 idx)
    { return it[pt[idx]]; }
  };

  static macro Self from(It& idxbl)
  { return { idxbl, BufferUInt::empty() }; }

  // O(n) relative to It
  macro Self& all()
    requires Sized<It>
  {
    indicies.destroy();
    indicies = BufferUInt::from(range(size(it)));
  }
  
};

template <Indexable T>
using Selection = BasicSelection<T, HeapBuffer<u32>>;

template <class T>
template <class Self_>
  requires std::same_as<Self_, View<T>>
macro Selection<const View<T>> View<T>::sel() const
{ return { *this, HeapBuffer<u32>::init() }; }

template <class T>
template <class Self_>
  requires std::same_as<Self_, View<T>>
macro Selection<View<T>> View<T>::sel()
{ return { *this, HeapBuffer<u32>::init() }; }

template <class T, Allocator<T> allocator>
template <class Self_>
  requires std::same_as<Self_, CustomBuffer<T, allocator>>
macro Selection<const CustomBuffer<T, allocator>>
  CustomBuffer<T, allocator>::sel() const
{ return { *this, HeapBuffer<u32>::init() }; }

template <class T, Allocator<T> allocator>
template <class Self_>
  requires std::same_as<Self_, CustomBuffer<T, allocator>>
macro Selection<CustomBuffer<T, allocator>>
  CustomBuffer<T, allocator>::sel()
{ return { *this, HeapBuffer<u32>::init() }; }


#endif
