#include "random.hpp"

constexpr int res = random::randint(10, 20);
u32 global_seed;

int main()
{
  println("{}, {}", res,
    214013U*detail::consteval_time_macro_to_u32(__TIME__)+2531011U
  );
  return 0;
}




