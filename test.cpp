#include "list.hpp"
#include "iters.hpp"

int main()
{
  let data = array[5,6,7,4,5,3,2,4,6,7,5,4,3,6,7];
  for (let [i, j] : zip(range(data.len()), data))
  {
    println("{}, {}", i, j);
  }
  return 0;
}




