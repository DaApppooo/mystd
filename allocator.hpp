#ifndef H_ALLOCATOR
#define H_ALLOCATOR
#include "macros.hpp"
#include "traits.hpp"
#include <cstddef>
#include <memory>
#include <type_traits>

/*

Allocator<i32> should allocate contiguous blocks of 1 or more i32
Allocator<i32[2]> should allocate contiguous blocks of an equivalent of
  std::array<i32, 2>
Allocator<i32[2][3]> should similarly allocate contiguous blocks of
  std::array<std::array<i32, 3>, 2>
  (which is just std::array<i32, 2*3>)
Allocator<i32[2]*> should allocate contiguous blocks of 1 or more pointers
  to std::array<i32, 2>
  
*/
template <class T, class Element = typename T::value_type>
concept Allocator =
   requires (size_t s) // malloc
     {{ T::alloc(s) } -> std::same_as<Element*>;}
&& requires (Element* p, size_t s) // realloc
     {{ T::alloc(p, s) } -> std::same_as<Element*>;}
&& ( requires (const Element* p) {{ T::free(p) };} // free
  || requires (Element*& p) {{ T::free(p) };}
);

template <class T, template <class T_sub> class freetype_allocator>
  requires Allocator<freetype_allocator<T>, T>
using const_allocator_of = freetype_allocator<const T>;

template <class T>
struct VoidAllocator
{
  using raw_type = std::remove_all_extents_t<T>;
  using value_type = raw_type;
  static macro raw_type* alloc(size_t s)
  { return nullptr; }
  static macro raw_type* alloc(raw_type* p, size_t s)
  { return nullptr; }
  static macro void free(const raw_type* p)
  { }
};

template <class T>
struct CAllocator
{
  using raw_type = std::remove_all_extents_t<T>;
  using value_type = raw_type;
  static macro raw_type* alloc(size_t s)
  { return (raw_type*)malloc(sizeof(T) * s); }
  static macro raw_type* alloc(raw_type* p, size_t s)
  { return (raw_type*)realloc(p, sizeof(T)*s); }
  static macro void free(const raw_type* p)
  { ::free(reinterpret_cast<void*>(const_cast<T*>(p))); }
};

template <class T>
struct CppPartialAllocator
{
  using raw_type = std::remove_all_extents_t<T>;
  using value_type = raw_type;
  static macro raw_type* alloc(size_t s) { return new T[s]; }
  static macro raw_type* alloc(const T* p, size_t s) = delete;
  static macro void free(const T* p) { delete[] p; }
};

// a shitty compliant allocator that uses c++'s new[] and delete[]
template <class T>
struct CppFixedAllocator
{
  using raw_type = std::remove_all_extents_t<T>;
  using value_type = raw_type;
  static macro raw_type* alloc(size_t s)
  {
    u8* p = new u8[sizeof(T)*s + sizeof(size_t)];
    s *= sizeof(T);
    std::copy(&s, 1+&s, p);
    return reinterpret_cast<raw_type*>(p + sizeof(size_t));
  }
  static macro raw_type* alloc(raw_type* p, size_t s)
  {
    const u8* bytes = reinterpret_cast<u8*>(p);
    const size_t old_size =
      *reinterpret_cast<const size_t*>(bytes - sizeof(size_t));
    if (s == old_size)
      return p;
    u8* new_bytes = new u8[sizeof(T)*s + sizeof(size_t)];
    std::copy(&s, 1+&s, new_bytes);
    std::copy(p, p + std::min(old_size, s), new_bytes+sizeof(size_t));
    return new_bytes + sizeof(size_t);
  }
  static macro void free(const raw_type* p) { delete[] p; }
};

// A link is a copy of an object made undropable
template <class T>
struct BareLink
{
  Ref<T> _obj;
  BareLink(const T& obj) : _obj(obj) {}
  macro BareLink<T> copy() const { return { _obj.copy() }; }
  macro Own<T> copy_inner() const { return _obj.copy(); }
  macro operator T& () { return _obj; }
  macro operator const T& () const { return _obj; }
  macro T& get() { return _obj; }
  macro const T& get() const { return _obj; }
  macro T& operator * () { return _obj; }
  macro const T& operator * () const { return _obj; }
  macro T* operator -> () { return &_obj; }
  macro const T* operator -> () const { return &_obj; }
};

// Automatically choses pass by value or by address (in a perfect world it
// always matches the best option, but that's not how it works rn).
template <class T>
struct arg;

template <class T>
  requires (sizeof(T) > 32)
struct arg<T>
{
  using Self = arg<T>;
  T* const _ptr;
  arg() = delete;
  macro arg(const arg<T>& other) : _ptr(other._ptr) {}
  macro operator T& () noexcept { return *_ptr; }
  macro arg(T& other) noexcept : _ptr(&other) {}
  macro Self& operator = (const T& other) { *_ptr = other; }
  macro T& operator * () noexcept { return *_ptr; }
  macro T* operator -> () { return _ptr; }
  macro T* addr() noexcept { return _ptr; }
  macro T& get() noexcept { return *_ptr; }
};

template <class T>
  requires (sizeof(T) <= 32)
struct arg<T>
{
  using Self = arg<T>;
  T _val;
  arg() = delete;
  arg(T&& obj) = delete;
  macro arg(const arg<T>& other) : _val(other._val) {}
  macro operator T& () noexcept { return _val; }
  macro arg(T& other) noexcept : _val(other) {}
  macro Self& operator = (const T& other) { *_val = other; }
  macro T& operator * () noexcept { return _val; }
  macro T* operator -> () { return &_val; }
  macro T* addr() noexcept { return &_val; }
  macro T& get() noexcept { return _val; }
};

template <class T, Allocator<T> allocator = CAllocator<T>>
struct owned_ptr
{
  static macro bool is_arr = std::is_array_v<T>;
  static macro size_t arr_size = std::size<T>;
  using raw_type = std::remove_extent_t<T>;
  Own<raw_type*> mutable ptr; // intended to be accessed
  static macro owned_ptr<T, allocator> make(Own<T> val)
  {
    owned_ptr<T, allocator> self;
    self.ptr = allocator::alloc(sizeof(T));
    std::copy(&val, 1+&val, self.ptr);
    return self;
  }
  static macro owned_ptr<T, allocator> make(const Own<T>* val)
  {
    owned_ptr<T, allocator> self;
    self.ptr = allocator::alloc(sizeof(T));
    std::copy(val, 1+val, self.ptr);
    return self;
  }
  static macro owned_ptr<T, allocator> alloc()
  { return {allocator::alloc(sizeof(T))}; }
  static macro owned_ptr<T, allocator> steal_from(std::unique_ptr<T>& p)
  { return { p.release() }; }
  macro owned_ptr(Own<raw_type*> const p)
    : ptr(p) {}
  macro owned_ptr(const _DefaultType&) : ptr(nullptr) {}
  macro owned_ptr<T> copy() const
  {
    owned_ptr<T> ret;
    if (!ptr)
      ret = {ptr};
    else
    {
      ret = allocator::alloc(1);
      if macro(Copiable<T>)
        *ret = ptr->copy();
    }
  }
  macro void steal(Own<raw_type*>& p) { ptr = p; p = nullptr; }
  macro void steal(std::unique_ptr<T>& p) { ptr = p.release(); }
  macro owned_ptr<T> move() const
  {
    owned_ptr<T> ret = ptr;
    ptr = nullptr;
    return ret;
  }
  macro void drop() const
  {
    if (ptr)
    {
      if macro(Dropable<T>)
        ptr->drop();
      allocator::free(ptr);
      ptr = nullptr;
    }
  }
  macro T& operator * () { return *ptr; }
  macro const T& operator * () const { return *ptr; }
  macro raw_type* operator -> () { return ptr; }
  macro const raw_type* operator -> () const { return ptr; }
  macro raw_type& operator [] (size_t i) { return ptr[i]; }
  macro const raw_type& operator [] (size_t i) const { return ptr[i]; }
  macro bool operator <=> (const raw_type* p) const { return ptr <=> p; }
  macro operator bool () const { return bool(ptr); }
  macro operator const raw_type* () const { return ptr; }
  macro operator raw_type* () { return ptr; }
};

template <class T, Allocator<T> all>
macro owned_ptr<T, all>::raw_type* operator +
  (const owned_ptr<T, all>& op, const size_t diff)
  { return op.ptr + diff; }
template <class T, Allocator<T> all>
macro ptrdiff_t operator -
  (const owned_ptr<T, all>& a, const owned_ptr<T, all>& b)
  { return a.ptr - b.ptr; }
template <class T, Allocator<T> all>
macro ptrdiff_t operator -
  (const owned_ptr<T, all>& a, const typename owned_ptr<T, all>::raw_type* b)
  { return a.ptr - b; }
template <class T, Allocator<T> all>
macro ptrdiff_t operator -
  (const typename owned_ptr<T, all>::raw_type* b, const owned_ptr<T, all>& a)
  { return b - a.ptr; }

#endif

#ifdef USE_ARENA
#undef USE_ARENA
mod arena
{
struct Arena
{
  u8* _p;
  u8* _begin;
  u32 _cap_left;

  static macro Arena null() { return {nullptr, nullptr, 0}; }
  macro bool is_null() const { return _p == nullptr && _begin == nullptr; }

  template <Allocator<u8> allocator = CAllocator<u8>>
  static macro Arena alloc(u32 cap)
  { Arena out; out._p = out._begin = allocator::alloc(cap);
    out._cap_left = cap; return out; }

  template <Allocator<u8> allocator = CAllocator<u8>>
  macro void destroy()
  { if (_begin) allocator::free(_begin); _p = _begin = nullptr; }
};

extern Arena current; // must be defined somewhere in your source files

template <Allocator<u8> allocator = CAllocator<u8>>
[[nodiscard]]
macro Ref<Arena> push(u32 cap)
{ Arena ret = current; current = Arena::alloc<allocator>(cap); return ret; }

template <Allocator<u8> allocator = CAllocator<u8>>
macro void pop(Ref<Arena> arena)
{ current.destroy<allocator>(); current = arena; }
}

template <class T>
struct ArenaAllocator
{
  using raw_type = std::remove_all_extents_t<T>;
  using value_type = raw_type;
  static macro raw_type* alloc(u32 s)
  {
    const size_t size = sizeof(T) * s + sizeof(size_t);
    if (arena::current._cap_left < size)
      return nullptr;
    u8* const ret = arena::current._p;
    *reinterpret_cast<size_t*>(ret) = size;
    arena::current._p += size;
    arena::current._cap_left -= size;
    return reinterpret_cast<raw_type*>(ret + sizeof(size_t));
  }
  static macro raw_type* alloc(raw_type* p, size_t s)
  {
    if (p == nullptr)
      return alloc(s);
    const size_t size = sizeof(T) * s + sizeof(size_t);
    if (arena::current._cap_left < size)
      return nullptr;
    u8* const ret = arena::current._p;
    *reinterpret_cast<size_t*>(ret) = size;
    arena::current._p += size;
    arena::current._cap_left -= size;
    const size_t old_size = *(reinterpret_cast<size_t*>(p)-1) - sizeof(size_t);
    std::copy(p, p + old_size, ret + sizeof(size_t));
    return reinterpret_cast<raw_type*>(ret + sizeof(size_t));
  }
  static macro inline void free(const raw_type* p) {}
};
#endif /* USE_ARENA */

