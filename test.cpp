#include "opt.hpp"

Opt<i32> f(i32 x)
{
  if (x)
    return x;
  else
    return Opt<>::NONE;
}

int main()
{
  let res = f(5);
  if (res)
    println("result: {}", res.get());
  else
    println("");
  return 0;
}



