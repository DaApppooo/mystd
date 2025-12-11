#ifndef H_ALLOCATOR
#define H_ALLOCATOR
#include "macros.hpp"
#include "traits.hpp"
#include <cstddef>
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

template <class T>
struct CAllocator
{
  using raw_type = std::remove_all_extents_t<T>;
  using value_type = raw_type;
  static macro raw_type* alloc(size_t s)
  { return (raw_type*)malloc(sizeof(T) * s); }
  static macro raw_type* alloc(T* p, size_t s)
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


template <class T, Allocator<T> allocator = CAllocator<T>>
struct owned_ptr
{
  static macro bool is_arr = std::is_array_v<T>;
  static macro size_t arr_size = std::size<T>;
  using raw_type = std::remove_extent_t<T>;
  Own<raw_type*> mutable ptr; // intended to be accessed
  static macro owned_ptr<T, allocator> alloc(Own<T> val)
  {
    owned_ptr<T, allocator> self;
    self.ptr = allocator::alloc(sizeof(T));
    std::copy(&val, 1+&val, self.ptr);
    return self;
  }
  static macro owned_ptr<T, allocator> alloc(const Own<T>* val)
  {
    owned_ptr<T, allocator> self;
    self.ptr = allocator::alloc(sizeof(T));
    std::copy(val, 1+val, self.ptr);
    return self;
  }
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
  macro owned_ptr<T> drop() const
  {
    owned_ptr<T> ret = ptr;
    ptr = nullptr;
    return ret;
  }
  macro void destroy() const
  {
    if (ptr)
    {
      if macro(Destroyable<T>)
        ptr->destroy();
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
