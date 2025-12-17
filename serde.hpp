#ifndef H_SERDE
#define H_SERDE
#include "macros.hpp"
#include "opt.hpp"

mod serde
{
  enum Result { SUCCESS=0, FAILURE=1 };

  using SerCallback =
    Result(*)(const void* src, size_t size, void* data);
  using DeserCallback =
    Result(*)(void* src, size_t size, void* data);

  struct MemPack
  {
    u8 *begin, *end;
  };

  // File versions work for both the File type from file.hpp and the FILE* in C
  // You just need to give a FILE** to the 
  macro Result ser_file(const void* src, size_t size, void* file)
  { FILE* p = *reinterpret_cast<FILE**>(file); return Result(fwrite(src, size, 1, p) == 0); }
  macro Result deser_file(void* dst, size_t size, void* file)
  { FILE* p = *reinterpret_cast<FILE**>(file); return Result(fread(dst, size, 1, p) == 0); }
  // Memory versions require a MemPack* as a parameter
  macro Result ser_mem(const void* src, size_t size, void* dst)
  {
    MemPack* mem = reinterpret_cast<MemPack*>(dst);
    if (mem->begin + size > mem->end)
      return FAILURE;
    const u8* src_ = reinterpret_cast<const u8*>(src);
    std::copy(src_, src_+size, mem->begin);
    mem->begin += size;
    return SUCCESS;
  }
  macro Result deser_mem(void* dst, size_t size, void* src)
  {
    MemPack* mem = reinterpret_cast<MemPack*>(src);
    if (mem->begin + size > mem->end)
      return FAILURE;
    u8* dst_ = reinterpret_cast<u8*>(dst);
    std::copy(mem->begin, mem->begin + size, dst_);
    mem->begin += size;
    return SUCCESS;
  }
  
  template <class T>
  concept Serializable = requires(T o, SerCallback s, void* data)
  { { o.serialize(s, data) } -> std::same_as<Result>; };

  template <class T>
  concept Deserializable = requires(DeserCallback d, void* data)
  { { T::deserialize(d, data) } -> std::same_as<Opt<T>>; };
}

#endif
