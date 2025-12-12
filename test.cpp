#include "buffer.hpp"
#include "traits.hpp"

template <class T>
using List = HeapBuffer<T>;

struct S
{ int x; };

List<S> arr;

void add(const RVal<S> auto elem)
{ arr.push(elem); }

int main()
{
  let temp = S{3};
  add(&temp);
}




