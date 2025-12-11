
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
#include "allocator.hpp"
#include "buffer.hpp"
#include "array.hpp"
#include "macros.hpp"
#include "opt.hpp"
#include "traits.hpp"
#include "types.hpp"
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

template <class T, size_t n>
struct SparseFix1Node
{
  using Self = SparseFix1Node<T, n>;
  using value_type = T;
  T _val;
  Array<owned_ptr<Self>, n> _children;
  inline macro u32 children_count() const
  {
    u32 acc = 0;
    for (const Self* p : _children)
      if (p)
        acc++;
    return acc;
  }
  inline macro u32 len() { return children_count(); }
  macro T& get() { return _val; }
  macro const T& get() const { return _val; }
  macro T& operator * () { return _val; }
  macro const T& operator * () const { return _val; }
  macro T* operator -> () { return &_val; }
  macro const T* operator -> () const { return &_val; }
  macro Self& operator [] (u32 i)
  { return *_children[i]; }
  macro const Self& operator [] (u32 i) const
  { return *_children[i]; }
  macro void destroy() const { _children.destroy(); }
  macro void destroy() { _children.destroy(); }

  macro Opt<Self&> add(Own<T> val)
  {
    for (owned_ptr<Self>& p : _children)
    {
      if (p)
        continue;
      p = owned_ptr<Self>::alloc(val);
      return *p;
    }
    return _;
  }
  macro Opt<Self&> add(const Own<T>* val)
  {
    for (owned_ptr<Self>& p : _children)
    {
      if (p)
        continue;
      p = owned_ptr<Self>::alloc(val);
      return *p;
    }
    return _;
  }
  // Address check. Doesn't do anything if the element isn't there.
  macro void rm(const Self& node)
  {
    for (owned_ptr<Self>& p : _children)
    {
      if (p != &node)
        continue;
      p.destroy();
    }
  }
  macro void rm(i32 index)
  { _children[index].destroy(); }

  macro View<owned_ptr<Self>> children() const
  { return _children.to_view(); }
};

template <class T>
struct LinNode
{
  using Self = LinNode<T>;
  using value_type = T;
  T _val;
  u32 _cc; // child count + sub-... child count + 1
  u32 _parent; // absolute index of the parent
  inline macro u32 children_count() const { return _cc - 1; }
  inline macro u32 len() const { return children_count(); }
  macro T& get() { return _val; }
  macro const T& get() const { return _val; }
  macro T& operator * () { return _val; }
  macro const T& operator * () const { return _val; }
  macro T* operator -> () { return &_val; }
  macro const T* operator -> () const { return &_val; }
  macro Self& operator [] (u32 i)
  {
    Self* p = this + 1;
    while (i > 0)
    {
      p += p->_cc; i--;
    };
    return *p;
  }
  macro const Self& operator [] (u32 i) const
  {
    const Self* p = this + 1;
    while (i-- > 0) p = p + p->_cc;
    return *p;
  }
  // returns next sibling (faster than indexing)
  macro Self& next() { return *(this + _cc); }
};


template <class T, size_t cap>
  requires (cap > 0)
struct StackLinTree
{
  using Self = StackLinTree<T, cap>;
  struct NodeData;
  using node_type = NodeData&;
  using const_node_type = const NodeData&;
  static macro u32 NO_PARENT = UINT32_MAX;
  
  Array<NodeData, cap> _data;

  static macro Self rootless() noexcept
  {
    Self temp = {Array<T, cap>::init()};
    temp._data[0]._cc = 0;
  }

  static macro Self with_root(Own<T> val) noexcept
  {
    const NodeData temp = { val, 1, NO_PARENT };
    return Self{Array<NodeData,cap>::from(
      View<const NodeData>::range(&temp, 1)
    )};
  }

  macro bool has_root() const { return _data[0]._cc != 0; }
  macro Self& add_root(Own<T> val)
  { need(_data.len() == 0); _data.push({val, 1, NO_PARENT}); return *this; }
  macro const Self& add_root(Own<T> val) const
  { need(_data.len() == 0); _data.push({val, 1, NO_PARENT}); return *this; }

  macro Opt<node_type> root() noexcept
  {
    if (_data.len())
      return _data[0];
    return _;
  }
  macro Opt<const_node_type> root() const noexcept
  {
    if (_data.len())
      return _data[0];
    return _;
  }

  macro node_type add_child(node_type parent, Own<T> val)
  {
    need(&parent >= _data.begin()); // implies that tree contains root
    need(&parent < _data.begin()+_data[0]._cc);
    need(_data[0]._cc < cap);
    parent._cc++;
    size_t pi = parent._parent;
    while (pi != NO_PARENT)
    {
      _data[pi]._cc++;
      pi = _data[pi]._parent;
    }
    const size_t parent_index = &parent - _data.begin();
    const size_t index = &parent - _data.begin() + parent._cc - 1;
    std::copy(
      _data.data()+index,
      _data.data()+_data[0]._cc-1,
      _data.data()+index+1
    );
    _data[index] = NodeData{val, 1, u32(parent_index)};
    return _data[index];
  }

  // destroys the child and remove any grand-child
  macro void rm(const_node_type node) = delete; // TODO
  // {
  //   need(&node >= _data.begin()); // implies that tree contains root
  //   need(&node < _data.begin()+_data[0]._cc);
  //   const size_t index = &node - _data.begin();
  //   if macro(Destroyable<T>)
  //   {
  //     while (node._cc > 1)
  //     {
  //       u32 pi = index+1;
  //       while (_data[pi]._cc > 1)
  //       {
  //         _data[pi]._cc--;
  //         pi++;
  //       }
  //       _data[pi]._val.destroy();
  //       node._cc--;
  //       // std::copy(
  //       //   // _data.data() + pi + 1,
  //       //   // _data.data() + _data[0].
  //       // );
  //     }
  //   }
  // }

  macro Opt<node_type> parent(const_node_type child)
  {
    need(&child >= _data.begin());
    need(&child < _data.end());
    if (child._parent == NO_PARENT)
      return _;
    return _data[child._parent];
  }
  macro Opt<const_node_type> parent(const_node_type child) const
  {
    need(&child >= _data.begin());
    need(&child < _data.end());
    if (child._parent == NO_PARENT)
      return _;
    return _data[child._parent];
  }

  struct _FixedLevelTraversal
  { // traverse from left to right one single depth level
    NodeData* _parent;
    struct iterator
    {
      using Self = iterator;
      using difference_type = std::ptrdiff_t;
      using value_type = T;
      NodeData* p;
      macro Self operator ++ () { p += p->_cc; return *this; }
      macro bool operator == (const Self other) const
      { return p == other.p; }
      macro T& operator * () { return p->_val; }
      macro const T& operator * () const { return p->_val; }
      macro T* operator -> () { return p->_val; }
      macro const T* operator -> () const { return p->_val; }
      macro std::ptrdiff_t operator - (const Self other) const
      { return p - other.p; }
    };
    macro iterator begin() { return {_parent+1}; }
    macro iterator end() { return {_parent+_parent->_cc}; }
    macro const iterator begin() const { return {_parent+1}; }
    macro const iterator end() const { return {_parent+_parent->_cc}; }
    macro const iterator cbegin() const { return {_parent+1}; }
    macro const iterator cend() const { return {_parent+_parent->_cc}; }
  };
  macro const _FixedLevelTraversal siblings(const_node_type node) const
  { need(node._parent != NO_PARENT); return {_data.data()+node._parent}; }
  macro const _FixedLevelTraversal children(const_node_type parent) const
  { return {&parent}; }
  macro _FixedLevelTraversal siblings(const_node_type node)
  { need(node._parent != NO_PARENT); return {_data.data()+node._parent}; }
  macro _FixedLevelTraversal children(const_node_type parent)
  { return {&parent}; }

  struct _DepthFirstTraversal
  { // traverse from left to right one single depth level
    NodeData* _parent;
    struct iterator
    {
      using Self = iterator;
      using difference_type = std::ptrdiff_t;
      using value_type = T;
      NodeData* p;
      macro Self operator ++ () { p += p->_cc; return *this; }
      macro bool operator == (const Self other) const
      { return p == other.p; }
      macro T& operator * () { return p->_val; }
      macro const T& operator * () const { return p->_val; }
      macro T* operator -> () { return p->_val; }
      macro const T* operator -> () const { return p->_val; }
      macro std::ptrdiff_t operator - (const Self other) const
      { return p - other.p; }
    };
    macro iterator begin() { return {_parent+1}; }
    macro iterator end() { return {_parent+_parent->_cc}; }
    macro const iterator begin() const { return {_parent+1}; }
    macro const iterator end() const { return {_parent+_parent->_cc}; }
    macro const iterator cbegin() const { return {_parent+1}; }
    macro const iterator cend() const { return {_parent+_parent->_cc}; }
  };
};

template <class T, size_t n>
struct HeapLinFixTree
{
  
};

template <class T, size_t n>
struct HeapNodeFixTree
{
  using Self = HeapNodeFixTree<T, n>;
  struct Node;
  using node_type = Node&;
  using const_node_type = const Node&;

  owned_ptr<Node> _root;

  static macro Self rootless() noexcept
  { return {nullptr}; }

  static macro Self with_root(Own<T> val) noexcept
  { return Self{ ._root = owned_ptr<Node>::alloc(val) }; }
  static macro Self with_root(const Own<T>* val) noexcept
  { return Self{ ._root = owned_ptr<Node>::alloc(val) }; }

  macro bool has_root() const { return _root != nullptr; }
  macro Self& add_root(Own<T> val)
  { need(!has_root()); _root = owned_ptr<Node>::alloc(val); return *this; }

  macro Opt<node_type> root() noexcept
  { if (_root) return *_root; return _; }
  macro Opt<const_node_type> root() const noexcept
  { if (_root) return *_root; return _; }

  struct _FixedLevelTraversal
  { // traverse from left to right one single depth level
    Node* _parent;
    struct iterator
    {
      using Self = iterator;
      using difference_type = std::ptrdiff_t;
      using value_type = T;
      Node* p;
      macro Self operator ++ () { p += p->_cc; return *this; }
      macro bool operator == (const Self other) const
      { return p == other.p; }
      macro T& operator * () { return p->_val; }
      macro const T& operator * () const { return p->_val; }
      macro T* operator -> () { return p->_val; }
      macro const T* operator -> () const { return p->_val; }
      macro std::ptrdiff_t operator - (const Self other) const
      { return p - other.p; }
    };
    macro iterator begin() { return {_parent+1}; }
    macro iterator end() { return {_parent+_parent->_cc}; }
    macro const iterator begin() const { return {_parent+1}; }
    macro const iterator end() const { return {_parent+_parent->_cc}; }
    macro const iterator cbegin() const { return {_parent+1}; }
    macro const iterator cend() const { return {_parent+_parent->_cc}; }
  };
  macro const _FixedLevelTraversal siblings(const_node_type node) const
  { need(node._parent != NO_PARENT); return {_data.data()+node._parent}; }
  macro const _FixedLevelTraversal children(const_node_type parent) const
  { return {&parent}; }
  macro _FixedLevelTraversal siblings(const_node_type node)
  { need(node._parent != NO_PARENT); return {_data.data()+node._parent}; }
  macro _FixedLevelTraversal children(const_node_type parent)
  { return {&parent}; }

  struct _DepthFirstTraversal
  { // traverse from left to right one single depth level
    Node* _parent;
    struct iterator
    {
      using Self = iterator;
      using difference_type = std::ptrdiff_t;
      using value_type = T;
      Node* p;
      macro Self operator ++ () { p += p->_cc; return *this; }
      macro bool operator == (const Self other) const
      { return p == other.p; }
      macro T& operator * () { return p->_val; }
      macro const T& operator * () const { return p->_val; }
      macro T* operator -> () { return p->_val; }
      macro const T* operator -> () const { return p->_val; }
      macro std::ptrdiff_t operator - (const Self other) const
      { return p - other.p; }
    };
    macro iterator begin() { return {_parent+1}; }
    macro iterator end() { return {_parent+_parent->_cc}; }
    macro const iterator begin() const { return {_parent+1}; }
    macro const iterator end() const { return {_parent+_parent->_cc}; }
    macro const iterator cbegin() const { return {_parent+1}; }
    macro const iterator cend() const { return {_parent+_parent->_cc}; }
  };
};

template <class T, size_t n>
macro void HeapNodeFixTree<T,n>::OwnedNode::destroy() const
{
  
}
macro void destroy();


