#include "tree.hpp"
template <class T, size_t cap>
using Tree = StackLinTree<T, cap>;

int main()
{
  mut t = Tree<i32, 128>::with_root(5);
  mut& r = t.root().get();
  t.add_child(r, 1);
  mut& c2 = t.add_child(r, 2);
  t.add_child(c2, 20);
  for (let v : t.siblings(c2))
  {
    println("A sibling of c2 contains: {}", v);
  }
  println("{}", *r[0]);
  println("{}", t.parent(c2).get().get());

  return 0;
}

/*

0

*/


