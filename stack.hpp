#ifndef H_STACK
#define H_STACK
#include "allocator.hpp"
#include "buffer.hpp"

// it's the exact same thing
// (except that usually a stack doesn't allow as much operations)
template <class T, Allocator<T> allocator>
using Stack = CustomBuffer<T, allocator>;

#endif
