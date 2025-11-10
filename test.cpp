#include "iters.hpp"
#include <print>

int main()
{
  i32 max = 15;
  for (i32 i : range(max))
  {
    if (i % 5)
      max++;
    std::print("{}\n", i);
  }
}



