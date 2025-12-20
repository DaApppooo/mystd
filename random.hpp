#ifndef H_RANDOM
#define H_RANDOM
#include "macros.hpp"
#include <random>
#include <type_traits>
#include "buffer.hpp"
#include <ctime>

namespace detail
{
  consteval bool consteval_is_digit(char c)
  { return c <= '9' && c >= '0'; }

  consteval u32 consteval_vtoi_impl(View<const char> str, int value = 0)
  {
    return
      str.len()
      ? consteval_is_digit(*str)
        ? consteval_vtoi_impl(++str, (*str - '0') + value * 10)
          : throw "compile-time-error: not a digit"
        : value;
  }

  consteval u32 consteval_vtoi(View<const char> str)
  { return consteval_vtoi_impl(str); }

  consteval u32 consteval_time_macro_to_u32(const char* TIME)
  {
    return consteval_vtoi_impl(View<const char>::from(TIME).to(TIME+2))*3600U
         + consteval_vtoi_impl(View<const char>::from(TIME+3).to(TIME+5))*60U
         + consteval_vtoi_impl(View<const char>::from(TIME+6).to(TIME+8));
  }
  struct MutCompTimeU32
  {
    u32* i;
    macro MutCompTimeU32(u32 val) { i = new u32(val); }
    macro u32 set(u32 new_val) const
    { *const_cast<u32*>(&i) = new_val; return i; }
  };
}

inline macro detail::MutCompTimeU32 global_ct_seed
  {detail::consteval_time_macro_to_u32(__TIME__)};
extern u32 global_seed;
struct _InitDeferAutoSeed
{
  _InitDeferAutoSeed()
  { global_seed = time(NULL); }
};
inline const _InitDeferAutoSeed _auto_seed_deferer;

// can't make it a mod because of the random() function
struct random
{
  static macro int randint(int a, int b)
  {
    // const u32 comptime_global_seed
    //   = detail::consteval_time_macro_to_u32(__TIME__);
    // const u32 comptime_h1 = (comptime_global_seed & 0xAAAA'AAAAU) >> 1;
    // const u32 comptime_h2 = (comptime_global_seed & 0x5555'5555U) << 1;
    // const u32 comptime_sd
    //   = (comptime_h1^comptime_global_seed)
    //     - (comptime_h2^comptime_global_seed);
    need(a < b);
    return std::is_constant_evaluated()
  ? int(global_ct_seed.set(214013U*global_ct_seed.i+2531011U)%(b-a))+a
  : int((global_seed = 214013*global_seed+2531011)%(b-a)+a);
  }
};

#endif
