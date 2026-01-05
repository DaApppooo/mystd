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

int main()
{
  for (auto [x,y] : zip(range(10), range(10)))
    println("{} {}", x, y);
  puts("Done.");
  return 0;
}




