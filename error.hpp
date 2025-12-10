#ifndef H_ERROR
#define H_ERROR

#include "macros.hpp"
#include "traits.hpp"
#include <concepts>
template <std::convertible_to<int> ErrEnum, class ErrInfo>
struct BaseError
{
  ErrInfo info;
  ErrEnum type;

  constexpr void destroy()
    requires Destroyable<ErrInfo>
  { info.destroy(); }
  constexpr operator bool () const
  { return true; }
};

template <std::integral ErrEnum>
struct BaseError<ErrEnum, void>
{
  ErrEnum type;
  constexpr operator bool () const
  { return true; }
};

#endif
