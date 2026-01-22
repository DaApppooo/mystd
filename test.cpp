#include "algo.hpp"

int main()
{
  let result = array[1,2,3,4]
                | map([](i32 x){ return f32(x*x); })
                | map([](i32 x){ return x*10; });
  println("{}", result);
  result.drop();
  return 0;
}




