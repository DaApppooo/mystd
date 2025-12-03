#include "macros.hpp"

struct S { int x, y; };

int main()
{
  S s{1,2};
  auto& [x, y] = s;
  // tie[x, y] = s;
  println("{}, {}", x, y);
  
  return 0;
}



