#include "types.hpp"
#include "macros.hpp"
#include "traits.hpp"
#include "iters.hpp"
#include <algorithm>
#include <utility>

// generator<i32> nums(i32 stop)
// {
  // i32 i = 0;
  // for (; i < stop; i++)
  // {
  //   yield i;
  // }
// }

namespace zip_detail {

template<std::size_t I, typename R, typename F>
inline macro R with_integral_constant(F f)
{
  return static_cast<F>(f)(std::integral_constant<std::size_t, I>{});
}


} // namespace detail

template<std::size_t N, typename R = void, typename F>
inline macro R with_n(int n, F &&f)
{
  macro auto invoke_array =
    []<std::size_t...I>(std::index_sequence<I...>) {
    return std::array{ zip_detail::with_integral_constant<I, R, F&&>... };
  }(std::make_index_sequence<N>{});

  return invoke_array.at(n)(std::forward<F>(f));
}

template <class T_OUT, class T_IN, size_t... I>
macro T_OUT deref_tuple(T_IN&& t_in, std::index_sequence<I...>)
{ return std::tuple(*std::get<I>(std::forward<T_IN>(t_in))...); }
template <class T_IN, size_t... I>
macro void incr_tuple(T_IN&& t_in, std::index_sequence<I...>)
{ (++std::get<I>(std::forward<T_IN>(t_in)), ...); }

template <Iterable... Its>
generator<std::tuple<typename Its::iterator::value_type...>>
  zip(Its&&... its)
{
  static macro u32 _COUNT = sizeof...(Its);
  auto iterables = std::tuple<Its...>(its...);
  auto iters = std::tuple<typename Its::iterator...>(its.begin()...);
  while (true)
  {
    bool finished_early = false;
    for (u32 i = 0; i < _COUNT && !finished_early; i++)
      with_n<_COUNT>(
        i, [&finished_early, &iterables, &iters](auto j)
        {
          if (std::get<j>(iterables).end() == std::get<j>(iters))
            finished_early = true;
        }
      );
    if (finished_early)
      break;
    yield deref_tuple<std::tuple<typename Its::iterator::value_type...>>
      (iters, std::make_index_sequence<_COUNT>());
    incr_tuple(iters, std::make_index_sequence<_COUNT>());
  }
}
  

int main()
{
  for (auto [x,y] : zip(range(10), range(10)))
    println("{} {}", x, y);
  puts("Done.");
  return 0;
}




