#ifndef H_ITERS
#define H_ITERS
#include "buffer.hpp"
#include "traits.hpp"
#include "types.hpp"
#include <concepts>

template <std::integral T>
struct FixedRangeIterable
{
  using Self = FixedRangeIterable<T>;
  using value_type = T;
  using iterator = Self;
  using const_iterator = const Self;
  mutable T x;
  T end_;
  T step;
  macro Self& operator ++ () // ++(int) is auto-impl by traits.hpp
  { x += step; return *this; }
  macro Self& operator -- ()
  { x -= step; return *this; }
  macro const Self& operator ++ () const // ++(int) is auto-impl by traits.hpp
  { x += step; return *this; }
  macro const Self& operator -- () const
  { x -= step; return *this; }
  macro bool operator == (Self other) const
  { return x*step >= other.x*other.step; }
  macro T& operator * ()
  { return x; }
  macro const T& operator * () const
  { return x; }
  macro T operator - (Self other) const
  { return x - other.x; }

  macro Self begin() const
  { return *this; }
  macro Self end() const
  { return { end_, end_, step }; }
  macro T len() const
  { return (end_ - x + step - 1)/step; }
  macro FormatView<char> format() const
  {
    std::format()
  }
};

template <std::integral T>
struct LinkedRangeIterable
{
  using Self = LinkedRangeIterable<T>;
  struct iterator
  {
    using value_type = T;
    remove_const<T>& x;
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
  using const_iterator = const iterator;
  remove_const<T> x;
  T& end_;
  T step;
  
  macro iterator begin()
  { return iterator{ x, end_, step }; }
  macro iterator end()
  { return iterator{ const_cast<remove_const<T>&>(end_), end_, step }; }
  macro T len() const
  { return (end_ - x + step - 1)/step; }
};

template <std::integral T = i32>
macro FixedRangeIterable<T> range(T&& count)
{ return {0, count, 1}; }
template <std::integral T = i32>
macro FixedRangeIterable<T> range(const T begin, T&& end)
{ return {begin, end, 1}; }
template <std::integral T = i32>
macro FixedRangeIterable<T> range(const T begin, T&& end, const T step)
{ return {begin, end, step}; }
template <std::integral T = i32>
macro LinkedRangeIterable<T> range(T& count)
{ return LinkedRangeIterable<T>{0, count, 1}; }
template <std::integral T = i32>
macro LinkedRangeIterable<T> range(const T begin, T& end)
{ return {begin, end, 1}; }
template <std::integral T = i32>
macro LinkedRangeIterable<T> range(const T begin, T& end, const T step)
{ return {begin, end, step}; }

namespace zip_detail {
template<std::size_t I, typename R, typename F>
inline macro R with_integral_constant(F f)
{
  return static_cast<F>(f)(std::integral_constant<std::size_t, I>{});
}
template <class T_OUT, class T_IN, size_t... I>
macro T_OUT deref_tuple(T_IN&& t_in, std::index_sequence<I...>)
{ return std::tuple(*std::get<I>(std::forward<T_IN>(t_in))...); }
template <class T_IN, size_t... I>
macro void incr_tuple(T_IN&& t_in, std::index_sequence<I...>)
{ (++std::get<I>(std::forward<T_IN>(t_in)), ...); }
template<std::size_t N, typename R = void, typename F>
inline macro R with_n(int n, F &&f)
{
  macro auto invoke_array =
    []<std::size_t...I>(std::index_sequence<I...>) {
    return std::array{ zip_detail::with_integral_constant<I, R, F&&>... };
  }(std::make_index_sequence<N>{});

  return invoke_array.at(n)(std::forward<F>(f));
}
} // namespace detail

template <Iterable... Its>
generator<std::tuple<iterable_value_type<Its>...>>
  zip(Its&&... its)
{
  static macro u32 _COUNT = sizeof...(Its);
  auto iterables = std::tuple(its...);
  auto iters = std::tuple(its.begin()...);
  std::apply([](auto it){ println("end: {}", it.end()); }, iterables);
  while (true)
  {
    bool finished_early = false;
    for (u32 i = 0; i < _COUNT && !finished_early; i++)
      zip_detail::with_n<_COUNT>(
        i, [&finished_early, &iterables, &iters](auto j)
        {
          println("%i\n", std::get<j>(iters));
          if (std::get<j>(iterables).end() == std::get<j>(iters))
          {
            printf("Iterator %lu finished early !", j.value);
            finished_early = true;
          }
        }
      );
    if (finished_early)
      break;
    yield zip_detail::deref_tuple
      <std::tuple<iterable_value_type<Its>...>>
      (iters, std::make_index_sequence<_COUNT>());
    zip_detail::incr_tuple(iters, std::make_index_sequence<_COUNT>());
  }
}

template <class It, class BufferUInt>
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

template <class T>
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

template <class Self, class T, Allocator<T> allocator>
template <class Self_>
  requires std::same_as<Self_, Self>
macro Selection<const Self>
  CustomBuffer<Self, T, allocator>::sel() const
{ return { *this, HeapBuffer<u32>::init() }; }

template <class Self, class T, Allocator<T> allocator>
template <class Self_>
  requires std::same_as<Self_, Self>
macro Selection<Self>
  CustomBuffer<Self, T, allocator>::sel()
{ return { *this, HeapBuffer<u32>::init() }; }


#endif
