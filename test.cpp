#include "enum.hpp"

struct Asteroid
{
  int x, y;
};

struct Spaceship
{
  int x, y;
  int id;
};

using SpaceObject = Enum<Asteroid, Spaceship>;

int main()
{
  SpaceObject obj = Spaceship{1, 2, 3};
  int x = obj.fetch<int>(
    [](const Spaceship& a) { return a.x; },
    [](const Asteroid& a) { return a.x; }
  );
  println("{}", x);
  return 0;
}



