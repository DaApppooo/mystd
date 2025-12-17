#include "allocator.hpp"
#include "array.hpp"
#include "algo.hpp"
#include "list.hpp"
#include <vector>

int main()
{
  std::vector<i32> a({1,2,3,4,5});
  mut my_list = List<i32>::steal(a);
  my_list.drop();
}




