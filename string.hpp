#ifndef H_STRING
#define H_STRING
#include "buffer.hpp"

template <class Char = char, Allocator<Char> allocator = CAllocator<Char>>
  requires (!Destroyable<Char>)
struct CString
{
  using Self = CString<Char, allocator>;
  using iterator = Char*;
  using indexed_type = Char;
  using index_t = i32;
  mutable Char* _data;
  u32 _cap; // total capacity, including terminating 0 char

  static macro Self init()
  { return {nullptr, 0}; }
  // unintialized buffer
  static macro Self alloc(u32 cap)
  { return {allocator::alloc(cap), 0, cap}; }
  static macro Self filled(const Char& value, u32 size)
  {
    Self self;
    self._data = allocator::alloc(size+1);
    self._cap = size+1;
    std::fill(self._data, self._data+size, value);
    self._data[size] = Char(0);
    return self;
  }
  static macro Self from(const View<const Char>& v)
  {
    Self self;
    self._data = allocator::alloc(v._len+1);
    self._cap = v._len+1;
    std::copy(v.begin(), v.end(), self._data);
    self._data[v._len] = Char(0);
    return self;
  }
  template <Iterable It_T>
    requires Sized<It_T>
  static macro Self from(const It_T& v)
  {
    Self self;
    const u32 l = size(v);
    self._data = allocator::alloc(l+1);
    self._cap = l+1;
    std::copy(v.begin(), v.end(), self._data);
    self._data[l] = Char(0);
    return self;
  }
  template <Iterable It_T>
  static macro Self from(const It_T& v)
  {
    Self self;
    for (const typename It_T::iterator::value_type obj : v)
      self.push(obj);
    return self;
  }

  // check if List state is as expected (eg. if allocation failed or not)
  macro const Char* cstr() const { return _data; }
  macro Char* cstr() { return _data; }
  macro bool ok() const
  { return _data || !_cap; }
  macro bool need_ok() const
  { need(ok()); return ok(); }
  macro bool is_null() const
  { return !_data; }
  static macro Self null()
  { return {._data = nullptr, ._cap = 0}; }
  macro Self& push(const Char element)
  {
    
    _len++;
    if (_len > _cap)
      grow_cap();
    if (!ok()) [[unlikely]]
      return *this;
    need(_cap >= _len);
    [[assume(_cap >= _len)]];
    std::copy(addr_of<T>(element), 1+addr_of<T>(element), _data+_len-1);
    return *this;
  }
  macro Self& extend(const View<const Char>& ext);
  macro Self& extend(const Char* str);
  macro Self& insert(const Char& element, i32 index);
  macro Self& insert(const View<const Char>& element, i32 index);
  macro Self& insert(const Char* str, i32 index);
  macro Own<Char> pop();
  macro Self& add_cap(u32 size);
  macro Self& realloc();
  macro void destroy();
  macro void destroy() const;
  macro Own<Self> copy() const;
  macro Own<Self> drop();
  macro Self& rm(i32 index);
  macro Self& rm(u32 begin, u32 end);
  macro View<T> to_view() const;
  macro Self& clear();
  macro View<T> slice(u32 length) const;
  macro View<T> slice(u32 begin, u32 end) const;
  macro const T& operator[](const i32 index) const;
  macro T& operator[](const i32 index);
  macro const T& operator[](const u32 index) const;
  macro T& operator[](const u32 index);
  macro T& last() const
  { return _data[_len-1]; }
  macro T& first() const
  { return _data[0]; }
  macro T* begin() const
  { return to_view().begin(); }
  macro T* end() const
  { return to_view().end(); }

  macro T* data() const { return _data; }
  macro u32 len() const { return _len; }
  macro u32 cap() const { return _cap; }
  macro Self& cap(u32 new_allocated_size);
  macro Self& len(u32 new_size);
  macro Self& len(Ref<T> fill_new_with, u32 new_size)
    requires Copiable<T>;
  macro Self& len(Ref<T>* fill_new_with, u32 new_size)
    requires Copiable<T>;
  macro bool is_empty() const
  { return _len == 0; }
  macro u32 grow_cap()
  {
    const u32 grow_size = _cap/2+(_cap<2);
    _cap += grow_size;
    _data = allocator::alloc(_data, _cap);
    return grow_size;
  }
  macro Self& shrink_cap(u32 new_cap)
  {
    need(new_cap <= _cap);
    _data = allocator::alloc(_data, new_cap);
    return *this;
  }

  inline serde::Result serialize(serde::SerCallback cb, void* data) const
  { return to_view().serialize(cb, data); }
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  static Opt<Self_> deserialize(serde::DeserCallback cb, void* data);  
};


#endif
