#include "tree.hpp"
template <class T, size_t cap>
using Tree = StackLinTree<T, cap>;

int main()
{
  mut t = Tree<i32, 128>::with_root(5);
  mut& r = t.root().get();
  t.add_child(r, 1);
  t.add_child(r, 2);
  for (let n : t._data)
  {
    println("{} {}", n._val, n._cc);
  }
  println("{}", *r[0]);

  return 0;
}



