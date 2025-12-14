#include "list.hpp"
#define USE_ARENA
#include "allocator.hpp"
#include "iters.hpp"

mod arena { arena::Arena current; }

int main()
{
  mut l = List<i32>::from(range(10));
  println("{}", l.to_view());
  l.destroy();
}




