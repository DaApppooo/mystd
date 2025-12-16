#define USE_ARENA
#include "allocator.hpp"
// #include "iters.hpp"

mod arena { arena::Arena current; }

int main()
{
  Link<i32> i = 5;
  i.get() += 10;
}




