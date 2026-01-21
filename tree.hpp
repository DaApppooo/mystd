
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
template <class T>
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

trait HeapBuildNode = requires (T a)
{
  { a.children_count() } -> std::convertible_to<size_t>;
  { a.children() } -> std::convertible_to<View<const T>>;
  { a.next() } -> std::same_as<T&>;
};
template <HeapBuildNode NodeType>
struct BasicHeapBuildTree;

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
  // Address check. Doesn't do anything if the element isn't there.
  macro void rm(Ref<T>& val)
  {
    for (owned_ptr<Self>& p : _children)
    {
      if (p != val)
        continue;
      p.destroy();
    }
  }
  
  macro View<owned_ptr<Self>> children() const
  { return _children.to_view(); }
};

template <class T>
struct SparseDyn1Node
{
  using Self = SparseDyn1Node<T>;
  using value_type = T;
  T _val;
  HeapBuffer<owned_ptr<Self>> _children;
  inline macro u32 children_count() const
  {  return _children.len(); }
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
    _children.push(val);
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
  static macro u32 NO_PARENT = UINT32_MAX;
  using Self = LinNode<T>;
  using value_type = T;
  T _val;
  u32 _cc; // child count + sub-... child count + 1
  u32 _parent; // absolute index of the parent
  inline macro u32 children_count() const { return _cc - 1; }
  inline macro u32 len() const { return children_count(); }
  macro u32 
  macro View<const Self> children() const
  { return View<const Self>::range(this+1, _cc-1); }
  macro View<Self> children()
  { return View<Self>::range(this+1, _cc-1); }
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
  using node_type = LinNode<T>;
  
  Array<node_type, cap> _data;

  static macro Self rootless() noexcept
  {
    Self temp = {Array<T, cap>::init()};
    temp._data[0]._cc = 0;
  }
  static macro Self init() noexcept { return rootless(); }

  static macro Self with_root(Own<T> val) noexcept
  {
    const node_type temp = { val, 1, node_type::NO_PARENT };
    return Self{Array<node_type,cap>::from(
      View<const node_type>::range(&temp, 1)
    )};
  }

  macro bool has_root() const { return _data[0]._cc != 0; }
  macro Self& add_root(Own<T> val)
  { need(_data[0]._cc == 0);
    _data.push({val, 1, node_type::NO_PARENT});
    return *this; }

  macro Opt<node_type&> root() noexcept
  {
    if (_data.len())
      return _data[0];
    return _;
  }
  macro Opt<const node_type&> root() const noexcept
  {
    if (_data.len())
      return _data[0];
    return _;
  }

  macro node_type& add_child(node_type parent, Own<T> val)
  {
    need(&parent >= _data.begin()); // implies that tree contains root
    need(&parent < _data.begin()+_data[0]._cc);
    need(_data[0]._cc < cap);
    parent._cc++;
    size_t pi = parent._parent;
    while (pi != node_type::NO_PARENT)
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
    _data[index] = node_type{val, 1, u32(parent_index)};
    return _data[index];
  }

  // destroys the child and remove any grand-child
  macro void rm(const node_type& node) = delete; // TODO

  macro Opt<node_type&> parent(const node_type& child)
  {
    need(&child >= _data.begin());
    need(&child < _data.end());
    if (child._parent == node_type::NO_PARENT)
      return _;
    return _data[child._parent];
  }
  macro Opt<const node_type&> parent(const node_type& child) const
  {
    need(&child >= _data.begin());
    need(&child < _data.end());
    if (child._parent == node_type::NO_PARENT)
      return _;
    return _data[child._parent];
  }

  struct _FixedLevelTraversal
  { // traverse from left to right one single depth level
    node_type* _parent;
    struct iterator
    {
      using Self = iterator;
      using difference_type = std::ptrdiff_t;
      using value_type = T;
      node_type* p;
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
  macro const _FixedLevelTraversal siblings(const node_type& node) const
  { need(node._parent != node_type::NO_PARENT);
    return {_data.data()+node._parent}; }
  macro const _FixedLevelTraversal children(const node_type& parent) const
  { return {&parent}; }
  macro _FixedLevelTraversal siblings(const node_type& node)
  { need(node._parent != node_type::NO_PARENT);
    return {_data.data()+node._parent}; }
  macro _FixedLevelTraversal children(const node_type& parent)
  { return {&parent}; }
};

template <class T>
struct HeapLinTree
{
  using Self = HeapLinTree<T>;
  using node_type = LinNode<T>;

  HeapBuffer<LinNode<T>> _data;
  
  static macro Self rootless() noexcept
  { return { HeapBuffer<LinNode<T>>::init() }; }

  static macro Self with_root(Own<T> val) noexcept
  {
    Self self;
    self._data = HeapBuffer<T>::init();
    self._data.push(node_type{val, 1, node_type::NO_PARENT});
  }

  macro bool has_root() const { return _data.len() > 0; }
  macro Self& add_root(Own<T> val)
  {
    need(_data.len() == 0);
    _data.push({val, 1, node_type::NO_PARENT});
    return *this;
  }
  macro Opt<node_type&> root()
  {
    if (_data.len())
      return _data[0];
    return _;
  }
  macro Opt<const node_type&> root() const
  {
    if (_data.len())
      return _data[0];
    return _;
  }

  macro node_type& add_child(node_type parent, Own<T> val)
  {
    
  }
};

template <class T, size_t n>
struct HeapNodeFixTree
{
  using Self = HeapNodeFixTree<T, n>;
  using node_type = SparseFix1Node<T, n>;
  using const_node_type = const SparseFix1Node<T, n>;

  owned_ptr<LinNode<T>> _root;

  static macro Self rootless() noexcept
  { return {nullptr}; }

  static macro Self with_root(Own<T> val) noexcept
  { return Self{ ._root = owned_ptr<node_type>::alloc(val) }; }
  static macro Self with_root(const Own<T>* val) noexcept
  { return Self{ ._root = owned_ptr<node_type>::alloc(val) }; }

  macro bool has_root() const { return _root != nullptr; }
  macro Self& add_root(Own<T> val)
  {
    need(!has_root());
    _root = owned_ptr<node_type>::alloc(val);
    return *this;
  }

  macro Opt<node_type&> root() noexcept
  { if (_root) return *_root; return _; }
  macro Opt<const_node_type&> root() const noexcept
  { if (_root) return *_root; return _; }

  struct _FixedLevelTraversal
  { // traverse from left to right one single depth level
    node_type* _parent;
    struct iterator
    {
      using Self = iterator;
      using difference_type = std::ptrdiff_t;
      using value_type = T;
      node_type* p;
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

/*
A HeapBuildTree is a free-form linear tree that can have multiple roots. As the
name suggests is made for situations where you want to build a tree node per
node. One use case could be AST building.

*/
template <HeapBuildNode T>
struct BasicHeapBuildTree
{
  using Self = BasicHeapBuildTree<T>;
  using node_type = LinNode<T>;
  using const_node_type = const LinNode<T>;

  HeapBuffer<node_type> _data;

  static macro Self init() noexcept
  { return HeapBuffer<T>::init(); }
  static macro Self with_root(Own<T> val)
  { return Self{HeapBuffer<T>::from(
      View<const_node_type>::wrap(
        node_type{ ._val = val, ._cc = 1, ._parent = node_type::NO_PARENT }
      )
    )};
  }

  // raw insert
  template <class... Args>
  macro Self& insert(u32 index, Args&&... args)
  { _data.insert(index, args...); }
  
  macro void drop()
  { _data.drop(); }
};

template <class T>
using HeapBuildTree = BasicHeapBuildTree<LinNode<T>>;


