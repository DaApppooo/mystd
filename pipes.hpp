#include "buffer.hpp"
#include "traits.hpp"
#include <functional>
#include <algorithm>


// wrappers of algorithm that make them usable with piping

namespace _pipes_internals
{
  template <class T>
  struct AllOf
  {
    std::function<bool(T)> _f;
    constexpr bool operator () (const View<T>& input) const
    { return std::all_of(input.begin(), input.end(), _f); }
  };
}

template <class T>
constexpr std::function<bool(View<T>)> all(
  const std::function<bool(T)>& func
)
{
  return [func](const View<T>& v){
    return std::all_of(v.begin(), v.end(), func);
  };
}
template <class T>
constexpr bool operator | (
  const View<T>& input,
  const std::function<bool(const View<T>&)>& f
) {
  return f(input);
}

