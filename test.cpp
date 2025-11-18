// #include "iters.hpp"
#include "./buffer.hpp"
#include "list.hpp"
#include "algo.hpp"
#include <print>
using namespace std;

int main()
{
  let L = list[1,2,3,4,5,6];
  let res = find_ordered(L, 5);
  println("{}", res - L.begin());
  L.destroy();
  return 0;
}



