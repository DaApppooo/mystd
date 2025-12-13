#ifndef H_QUEUE
#define H_QUEUE
#include "allocator.hpp"
#include "buffer.hpp"

template <
  class T,
  template <class T_sub> class freetype_allocator = CAllocator
>
struct Queue
{
  using allocator = freetype_allocator<T>;
  using const_allocator = freetype_allocator<const T>;
  using Self = Queue<T, freetype_allocator>;

  struct iterator
  {
    T* _p;
    T* const _b_end; // buffer end (when reached...)
    T* const _b_begin; // buffer begin (...switch _p to this one)
    // avoid non-looping on filled queues
    bool _filled_init; // true if !queue.is_empty() && _f==_l;

    macro iterator& operator ++ ()
    {
      if (_p == _b_end)
        _p = _b_begin;
      ++_p;
      _filled_init = false;
      return *this;
    }

    macro iterator& operator -- ()
    {
      --_p;
      if (_p == _b_begin-1)
        _p = _b_end-1;
      _filled_init = false;
      return *this;
    }

    macro iterator operator + (const size_t s)
    {
      iterator out = *this;
      out._p += s;
      if (out._p > out._b_end) [[unlikely]]
        out._p = out._b_begin + (out._p - out._b_end);
      out._filled_init = false;
      return out;
    }
    
    macro iterator operator - (const size_t s)
    {
      iterator out = *this;
      out._p -= s;
      if (out._p < out._b_begin) [[unlikely]]
        out._p = out._p + (out._p - out._b_end);
      out._filled_init = false;
      return out;
    }

    macro T& operator * () { return *_p; }
    macro const T& operator * () const { return *_p; }
    macro T* operator -> () { return _p; }
    macro const T* operator -> () const { return _p; }
    macro T& operator [] (const u32 i)
    {
      if (_p + i > _b_end)
        return *(_b_begin + (_p + i - _b_end));
      else
        return _p[i];
    }
    macro const T& operator [] (const u32 i) const
    {
      if (_p + i > _b_end)
        return *(_b_begin + (_p + i - _b_end));
      else
        return _p[i];
    }
    macro bool operator == (const iterator other) const
    { return _p == other._p && _filled_init == other._filled_init; }

    // order is ambiguous with this implementation
  };

  CustomBuffer<T, allocator> _b;
  u32 _l : 31;
  u8 _empty_bit : 1; // 0 when _cap is 0 (for optimization purposes)

  static macro Self init()
  { return { CustomBuffer<T, allocator>::init(), 0, 0 }; }

  static macro Self null()
  { return { CustomBuffer<T, allocator>::null(), 0, 0 }; }

  macro bool is_null() const { return _b.is_null(); }

  // _b._len is useless, so use it to represent front index
  macro u32& _f() { return _b._len; }

  macro void _grow()
  {
    T* const prev_end = _b._data + _b._cap;
    const u32 added_cap = _b.grow_cap();
    [[assume(added_cap > 0)]];
    if (_f() == 0) [[unlikely]]
    { _l = _b._cap - added_cap; return; }
    T* const cpy_begin = _b._data+_f();
    std::copy(cpy_begin, prev_end, cpy_begin+added_cap);
    _f() += added_cap;
    _empty_bit = 0;
  }

  macro Self& push(const Own<T> val)
  {
    if (_f() == _l && !_empty_bit)
      _grow();
    std::copy(&val, 1+&val, _b._data+_l);
    ++_l;
    _l = _l == _b._cap ? 0 : _l;
    _empty_bit = 0;
    return *this;
  }

  macro Own<T>& pop()
  {
    const u32 i = _f();
    ++_f();
    if (_f() == _b._cap) [[unlikely]]
      _f() = 0;
    _empty_bit = _f() == _l;
    return _b._data[i];
  }

  macro Ref<T>& peep() { return _b._data[_f()]; }
  macro const Ref<T>& peep() const { return _b._data[_f()]; }
  macro Queue<const T, freetype_allocator> to_const() const
  { return *this; }

  macro Opt<Own<T>&> try_pop()
  {
    if (_empty_bit || _b._cap == 0)
      return _;
    return pop();
  }

  macro bool is_empty() const { return _empty_bit || !_b._cap; }
  macro Own<Self> copy() const
  { return { _b.copy(), _l, _empty_bit }; }
  macro Own<Self> drop()
  { return { _b.drop(), _l, _empty_bit }; }

  macro iterator begin()
  { return iterator{
    _b._data+_f(), _b.end(), _b.begin(), !is_empty() && _l == _f()
  }; }
  macro iterator end()
  { return iterator{
    _b._data+_l, _b.end(), _b.begin(), false
  }; }
  macro Queue<const T, freetype_allocator>::iterator begin() const
  { return iterator{
    _b._data+_f(), _b.end(), _b.begin(), !is_empty() && _l == _f()
  }; }
  macro Queue<const T, freetype_allocator>::iterator end() const
  { return iterator{
    _b._data+_l, _b.end(), _b.begin(), false
  }; }
  macro Queue<const T, freetype_allocator>::iterator cbegin() const
  { return iterator{
    _b._data+_f(), _b.end(), _b.begin(), !is_empty() && _l == _f()
  }; }
  macro Queue<const T, freetype_allocator>::iterator cend() const
  { return iterator{
    _b._data+_l, _b.end(), _b.begin(), false
  }; }

  macro void destroy() { _b.destroy(); }
  macro void destroy() const { _b.destroy(); }
};

#endif
