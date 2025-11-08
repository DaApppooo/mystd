#ifndef H_SERDE
#define H_SERDE
#include "macros.hpp"
#include "opt.hpp"

mod serde
{
  enum Result { SUCCESS, FAILURE };

  using SerCallback =
    Result(*)(const void* src, size_t size, void* data);
  template <class T>
  using DeserCallback =
    Result(*)(void* src, size_t size, void* data);

  Result ser_file(const void* src, size_t size, void* file);
  Result deser_file(void* src, size_t size, void* file);
  Result ser_mem(const void* src, size_t size, void* file);
  Result deser_mem(void* src, size_t size, void* file);
  
  template <class T>
  concept Serializable = requires(T o, SerCallback s, void* data)
  { { o.serialize(s, data) } -> std::same_as<Result>; };

  template <class T>
  concept Deserializable = requires(DeserCallback<T> d, void* data)
  { { T::deserialize(d, data) } -> std::same_as<Opt<T>>; };
}

#endif
