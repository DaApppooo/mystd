#include "allocator.hpp"
#include "list.hpp"
#include "iters.hpp"

int main()
{
  let a = List<i32>::from(range(5, 20));
  let b = List<i32>::from(range(100, 120));

  let a_s = a[1,6][1,2];


  drop(a, b);
}




