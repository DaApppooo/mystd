#ifndef H_FILES
#define H_FILES
#include <cstdio>

struct File
{
  FILE* _fp;

  static File open(const char* const s, const char* const mode)
  {
    File self;
    self._fp = fopen(s, mode);
    return self;
  }
};



#endif
