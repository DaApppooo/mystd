
/*
<AllocStorage><StorageAlgo><ChildCap>[n_way_traversable][Ordered]Tree

AllocStorage:
  - Heap
  - Stack

StorageAlgo:
  - Lin : Stores tree nodes in a linear array.
  - Node : Stores tree nodes in individual allocations.

ChildCap:
  - Fix : Fixed max number of children per node.
  - Dyn : Dynamic max number of children per node.

n_way_traversable:
  1 way traversable (top to bottom) by default
  - 2 : a node also references its parents

Ordered: I think you know what 'Ordered' means (uses L < R).

Templates:
  T : stored value
  n : (Fix) number of children per node
  cap : (Stack) Allocated capacity.

*/

#include <concepts>
#include <cstddef>
#include "macros.hpp"
#include "opt.hpp"
template <class T, size_t n, size_t cap>
struct StackLinFixTree;
template <class T, size_t n>
struct HeapLinFixTree; // simple growing linear array
template <class T, size_t n>
struct HeapNodeFixTree;
template <class T>
struct HeapLinDynTree;
template <class T>
struct HeapNodeDynTree;

trait TreeNodeTrait = requires (T a)
{
  { a.children_count() } -> std::convertible_to<size_t>;
} && requires (T a, u32 i)
{
  { a[i] } -> std::same_as<typename T::value_type>;
};

trait TreeTrait = requires (T a)
{
  requires TreeNodeTrait<typename remove_ref<T>::node_type>;
  { a.root() } -> std::convertible_to<Opt<typename T::node_type>>;
};

template <TreeNodeTrait NodeType>
struct TreeView
{
  NodeType* p;
};

template <class T, size_t n, size_t cap>
struct StackLinFixTree
{
  using Self = StackLinFixTree<T, n, cap>;
  struct NodeData;
  using node_type = NodeData&;
  using const_node_type = const NodeData&;
  struct NodeData
  {
    using value_type = T;
    T _val;
    u32 _cc;
    inline constexpr u32 children_count() { return _cc; }
    inline constexpr u32 len() { return children_count(); }
    constexpr T* operator * () { return &_val; }
    constexpr const T* operator * () const { return &_val; }
    constexpr T* operator -> () { return &_val; }
    constexpr const T* operator -> () const { return &_val; }
    constexpr node_type operator [] (u32 i)
    {
      NodeData* p = this + 1;
      while (i-- > 0) p = p + p->_cc + 1;
      return *p;
    }
    constexpr const_node_type operator [] (u32 i) const
    {
      const NodeData* p = this + 1;
      while (i-- > 0) p = p + p->_cc + 1;
      return *p;
    }
    // returns next sibling (faster than indexing)
    constexpr node_type next() { return *(this + _cc + 1); }

  };
  
  NodeData _data[cap];
  u32 len;

  static constexpr Self init()
  { return {{}, 0}; }

  constexpr Opt<node_type> root()
  {
    if (len)
      return _data[0];
    return _;
  }
  
};

template <class T, size_t n>
struct HeapLinFixTree
{
  
};





