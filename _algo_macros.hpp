
#define _ALGO_INDEXABLE_IMPL \
constexpr Self& swap(i32 a, i32 b); \
constexpr Self& sort(); \
constexpr T& max() const \
  requires PartialOrder<T>; \
constexpr T& min() const \
  requires PartialOrder<T>; \
constexpr T& max() \
  requires PartialOrder<T>; \
constexpr T& min() \
  requires PartialOrder<T>;


#define _ALGO_SWAP_DECL(T, ...) \
constexpr T<__VA_ARGS__>& T<__VA_ARGS__>::swap(i32 a, i32 b) \
{ \
  const u32 i = a < 0 ? len()+a : a; \
  const u32 j = b < 0 ? len()+b : b; \
  std::swap((*this)[i], (*this)[j]); \
}
#define _ALGO_SORT_DECL(T, ...) \
constexpr T<__VA_ARGS__>& T<__VA_ARGS__>::sort() \
{ \
  std::sort(begin(), end()); \
}
#define _ALGO_MAX_CONST_DECL(T, OUTPUT, ...) \
constexpr OUTPUT& T<__VA_ARGS__>::max() const \
  requires PartialOrder<OUTPUT> \
{ \
  return std::max(begin(), end()); \
}
#define _ALGO_MAX_DECL(T, OUTPUT, ...) \
constexpr OUTPUT& T<__VA_ARGS__>::max() \
  requires PartialOrder<OUTPUT> \
{ \
  return std::max(begin(), end()); \
}
#define _ALGO_MIN_CONST_DECL(T, OUTPUT, ...) \
constexpr OUTPUT& T<__VA_ARGS__>::min() const \
  requires PartialOrder<OUTPUT> \
{ \
  return std::max(begin(), end()); \
}
#define _ALGO_MIN_DECL(T, OUTPUT, ...) \
constexpr OUTPUT& T<__VA_ARGS__>::min() \
  requires PartialOrder<OUTPUT> \
{ \
  return std::max(begin(), end()); \
}




