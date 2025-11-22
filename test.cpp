// #include "iters.hpp"
#include "enum.hpp"
#include <iostream>
#include <vector>
using namespace std;

struct Triangle {
  float base, hauteur;
  float aire() const { return base * hauteur; }
};
struct Carre {
  float cote;
  float aire() const { return cote * cote; }
};
using Polygone = Enum<Triangle, Carre>;

int main()
{
  vector<Polygone> polys = {
    Carre{5.f},
    Triangle{4.f,9.f},
    Triangle{3.f, 4.f}
  };
  
  for (const Polygone& p : polys)
  {
    p.match(
      [](const Triangle& t)
      { cout << "Triangle d'aire " << t.aire() << endl; },
      [](const Carre& c)
      { cout << "Carre d'aire " << c.aire() << endl; }
    );
  }
  
  return 0;
}



