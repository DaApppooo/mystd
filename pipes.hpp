#ifndef H_PIPES
#define H_PIPES
#include <functional>

template <class I, class O>
constexpr O operator | (I const& val, std::function<O(I)> func)
{ return func(val); }


#endif
