#ifndef H_QUEUE
#define H_QUEUE
#include "allocator.hpp"
#include "buffer.hpp"

template <class T, Allocator<T> allocator = CAllocator<T>>
struct Queue
{
  using Self = Queue<T, allocator>;

  struct iterator
  {
    T* _p;
    T* const _b_end; // buffer end (when reached...)
    T* const _b_begin; // queue end (...switch _p to this one)

    macro iterator& operator ++ ()
    {
      ++_p;
      if (_p == _b_end)
        _p = _b_begin;
      return *this;
    }

    macro iterator operator + (const size_t s)
    {
      iterator out = *this;
      out._p += s;
      if (out._p > out._b_end) [[unlikely]]
        out._p = out._b_begin + (out._p - out._b_end);
      return out;
    }
    
    macro iterator operator - (const size_t s)
    {
      iterator out = *this;
      out._p -= s;
      if (out._p < out._b_begin) [[unlikely]]
        out._p = out._p + (out._p - out._b_end);
      return out;
    }
  };

  CustomBuffer<T, allocator> _b;
  u32 _l : 31;
  u8 _empty_bit : 1; // 0 when _cap is 0 (for optimization purposes)

  static macro Self init()
  { return { CustomBuffer<T, allocator>::init(), 0, 0 }; }

  // _b._len is useless, so use it to represent front index
  macro T& _f() { return _b._len; }

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
  }

  macro Own<T>& pop()
  {
    const u32 i = _f();
    ++_f();
    if (_f() == _b._cap) [[unlikely]]
      _f() = 0;
    _empty_bit = _f() == _l;
    return _b[i];
  }

  macro Opt<Own<T>&> try_pop()
  {
    if (_empty_bit || _b._cap == 0)
      return _;
    return pop();
  }
};

#endif
