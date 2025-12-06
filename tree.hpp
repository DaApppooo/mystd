
/*
<AllocStorage><StorageAlgo>[ChildCap][n_way_traversable]Tree

AllocStorage:
  - Heap
  - Stack

StorageAlgo:
  - Lin : Stores tree nodes in a linear array.
  - Node : Stores tree nodes in individual allocations.

ChildCap:
  Dyn by default when there's no overhead with this method.
  - Fix : Fixed max number of children per node.
  - Dyn : Dynamic max number of children per node.

n_way_traversable:
  1 way traversable (top to bottom) by default
  - 2 : a node also references its parents

Templates:
  T : stored value
  n : (Fix) number of children per node
  cap : (Stack) Allocated capacity.

*/

#include <concepts>
#include <cstddef>
#include <cstdint>
#include "buffer.hpp"
#include "array.hpp"
#include "macros.hpp"
#include "opt.hpp"
template <class T, size_t cap>
  requires (cap > 0)
struct StackLinTree;
template <class T, size_t n>
struct HeapLinTree; // simple growing linear array
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

template <class T, size_t cap>
  requires (cap > 0)
struct StackLinTree
{
  using Self = StackLinTree<T, cap>;
  struct NodeData;
  using node_type = NodeData&;
  using const_node_type = const NodeData&;
  static constexpr u32 NO_PARENT = UINT32_MAX;
  struct NodeData
  {
    using value_type = T;
    T _val;
    u32 _cc; // child count + sub-... child count + 1
    u32 _parent; // absolute index of the parent
    inline constexpr u32 children_count() { return _cc; }
    inline constexpr u32 len() { return children_count(); }
    constexpr T& get() { return _val; }
    constexpr const T& get() const { return _val; }
    constexpr T& operator * () { return _val; }
    constexpr const T& operator * () const { return _val; }
    constexpr T* operator -> () { return &_val; }
    constexpr const T* operator -> () const { return &_val; }
    constexpr node_type operator [] (u32 i)
    {
      NodeData* p = this + 1;
      while (i > 0)
      {
        p += p->_cc + 1; i--;
      };
      return *p;
    }
    constexpr const_node_type operator [] (u32 i) const
    {
      const NodeData* p = this + 1;
      while (i-- > 0) p = p + p->_cc;
      return *p;
    }
    // returns next sibling (faster than indexing)
    constexpr node_type next() { return *(this + _cc); }
  };
  
  Array<NodeData, cap> _data;

  static constexpr Self rootless() noexcept
  {
    Self temp = {Array<T, cap>::init()};
    temp._data[0]._cc = 0;
  }

  static constexpr Self with_root(Own<T> val) noexcept
  {
    const NodeData temp = { val, 0, NO_PARENT };
    return Self{StackBuffer<NodeData,cap>::from(
      View<const NodeData>::range(&temp, 1)
    )};
  }

  constexpr bool has_root() const { return _data[0]._cc != 0; }
  constexpr Self& add_root(Own<T> val)
  { need(_data.len() == 0); _data.push({val, 0, NO_PARENT}); return *this; }
  constexpr const Self& add_root(Own<T> val) const
  { need(_data.len() == 0); _data.push({val, 0, NO_PARENT}); return *this; }

  constexpr Opt<node_type> root() noexcept
  {
    if (_data.len())
      return _data[0];
    return _;
  }
  constexpr Opt<const_node_type> root() const noexcept
  {
    if (_data.len())
      return _data[0];
    return _;
  }

  constexpr node_type add_child(node_type parent, Own<T> val)
  {
    need(&parent >= _data.begin());
    need(&parent < _data.end());
    parent._cc++;
    size_t pi = parent._parent;
    while (pi != NO_PARENT)
    {
      _data[pi]._cc++;
      pi = parent._parent;
    }
    const size_t parent_index = &parent - _data.begin();
    const size_t index = &parent - _data.begin() + parent._cc;
    _data.insert(NodeData{val, 0, }, static_cast<i32>(index));
    return _data[index];
  }

};

template <class T, size_t n>
struct HeapLinFixTree
{
  
};

