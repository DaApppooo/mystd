#include "allocator.hpp"
#include "list.hpp"
#include "iters.hpp"
#include "wrapper.hpp"
#include <vector>

template <class T>
struct MyVec : FromStdCPPWrapper<std::vector<T>> {};


int main()
{
  mut vec = MyVec<i32>::init();
  let res = safe_call<i32>([&vec]{vec->push_back(5); return 1;});    
  vec->push_back(6);
  vec->push_back(7);
  mut a = vec.move();
  println("vec={}", *vec);
  println("a={}", *a);
  vec.drop();
  a.drop();
  println("Done !");
  return 0;
}




