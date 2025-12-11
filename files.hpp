#ifndef H_FILES
#define H_FILES
#include <cstdio>
#include "buffer.hpp"
#include "opt.hpp"
#include "error.hpp"
#include "traits.hpp"

// in hope that one day this becomes constexpr
struct File
{
  static constexpr const char* READ = "r";
  static constexpr const char* READ_BYTES = "rb";
  static constexpr const char* WRITE = "w";
  static constexpr const char* WRITE_BYTES = "wb";
  static constexpr const char* APPEND = "a";
  static constexpr const char* APPEND_BYTES = "ab";
  static constexpr const char* READ_WRITE = "r+";
  static constexpr const char* READ_WRITE_BYTES = "rb+";
  static constexpr const char* READ_APPEND = "a+";
  static constexpr const char* READ_APPEND_BYTES = "ab+";
  enum FileErrorType
  {
    ERROR_NOT_ENOUGH_MEMORY,
    ERROR_EOF
  };
  using Error = ::BaseError<FileErrorType, void>;
  FILE* _fp;

  static Opt<File> open(const char* const s, const char* const mode) noexcept
  {
    File self;
    self._fp = fopen(s, mode);
    if (!self._fp)
      return _;
    return self;
  }
  static File init() noexcept { return {nullptr}; }

  i64 size() const
  {
    const long prev = ftell(_fp);
    fseek(_fp, 0, SEEK_END);
    const long l = ftell(_fp);
    fseek(_fp, prev, SEEK_SET);
    return l;
  }

  

  View<u8> read_into(View<u8> bytes) const
  {
    const size_t s = fread(bytes.begin(), 1, bytes.len(), _fp);
    return View<u8>::range(bytes.begin(), u32(s));
  }

  Own<View<u8>> read(View<u8> bytes) const
  {
    const size_t s = fread(bytes.begin(), 1, bytes.len(), _fp);
    return View<u8>::range(bytes.begin(), u32(s));
  }
  


  void close()
  {
    if (_fp)
    {
      fclose(_fp);
      return;
    }
  }
  void destroy() { close(); }
};



#endif
