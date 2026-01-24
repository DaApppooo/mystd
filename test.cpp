#include "list.hpp"
#include "iters.hpp"
#include "algo.hpp"
#include "queue.hpp"


int main()
{
  mut q = Queue<i32>::init();
  q.push(1);
  q.push(2);
  q.push(3);
  println("{}", q.pop());
  q.push(5);
  println("{}", q);
  return 0;
}




