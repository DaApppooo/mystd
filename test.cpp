#include "allocator.hpp"


struct Big { int x[1024]; };

// void push(Own<Big>);
void push(const Own<Big>* p);
void push(Own<Big>&&);

int main()
{
  push(&Big{1,2,3});
}



