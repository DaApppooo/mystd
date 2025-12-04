#include "allocator.hpp"
#include "macros.hpp"

struct S { int x, y; };

int main()
{
  using i32call = CAllocator<i32>;
  i32* i = i32call::alloc(5);
  i32call::free(i);
  
  return 0;
}



