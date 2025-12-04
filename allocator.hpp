#ifndef H_ALLOCATOR
#define H_ALLOCATOR
#include "macros.hpp"

template <class T, class Element>
concept Allocator =
   requires (size_t s) // malloc
     {{ T::alloc(s) } -> std::same_as<Element*>;}
&& requires (Element* p, size_t s) // realloc
     {{ T::alloc(p, s) } -> std::same_as<typename T::value_type*>;}
&& ( requires (const Element* p) {{ T::free(p) };} // free
  || requires (Element*& p) {{ T::free(p) };}
);

template <class T>
struct CAllocator
{
  using value_type = T;
  static constexpr T* alloc(size_t s) { return (T*)malloc(s); }
  static constexpr T* alloc(T* p, size_t s) { return (T*)realloc(p, s); }
  static constexpr void free(const T* p)
  { ::free(reinterpret_cast<void*>(const_cast<T*>(p))); }
};

template <class T>
struct CppPartialAllocator
{
  using value_type = T;
  static constexpr T* alloc(size_t s) { return new T[s]; }
  static constexpr T* alloc(const T* p, size_t s) = delete;
  static constexpr void free(const T* p) { delete[] p; }
};

// a shitty compliant allocator that uses c++'s new[] and delete[]
template <class T>
struct CppFixedAllocator
{
  using value_type = T;
  static constexpr T* alloc(size_t s)
  {
    u8* p = new u8[sizeof(T)*s + sizeof(size_t)];
    std::copy(&s, 1+&s, p);
    return reinterpret_cast<T*>(p + sizeof(size_t));
  }
  static constexpr T* alloc(T* p, size_t s)
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
  static constexpr void free(const T* p) { delete[] p; }
};

#endif
