#include "defer.hpp"
#include "queue.hpp"
#define USE_ARENA
#include "allocator.hpp"

mod arena { arena::Arena current; }

int main()
{
  mut a = arena::push(256);
  mut q = Queue<i32, ArenaAllocator>::init();
  defer [&q]{q.destroy();}; // <-- useless
  println("{}", (void*)arena::current._p);
  q.push(5);
  println("{}", (void*)arena::current._p);
  q.push(6);
  println("{}", (void*)arena::current._p);
  q.push(7);
  println("{}", (void*)arena::current._p);
  for (i32 i : q)
    println("EE: {}", i);
  arena::pop(a);
  puts("Done !");
}




