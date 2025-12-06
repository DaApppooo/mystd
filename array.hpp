#ifndef H_ARRAY
#define H_ARRAY
#include "serde.hpp"
#include "traits.hpp"
#include "types.hpp"
#include "buffer.hpp"
#include <algorithm>

template <class T, u32 size>
struct Array
{
  using Self = Array<T, size>;
  using indexed_type = T;
  using index_t = i32;
  T _data[size];

  static constexpr Self filled(T value)
  {
    Self self;
    std::fill(self._data, self._data+size, value);
    return self;
  }
  template <Iterable It_T>
    requires Sized<It_T>
  static constexpr Self from(const It_T v)
  {
    Self self;
    typename It_T::iterator it = v.begin();
    const u32 fill_size = std::min(size, v.len());
    for (u32 i = 0; i < fill_size; i++)
      self._data[i] = *(it++);
    return self;
  }
  template <Iterable It_T>
  static constexpr Self from(const It_T v)
  {
    Self self;
    typename It_T::iterator it = v.begin();
    for (u32 i = 0; i < size && !(it == v.end()); i++)
      self._data[i] = *(it++);
    return self;
  }

  constexpr View<const T> to_view() const
  { return View<const T>::range(_data, size); }
  constexpr View<const T> slice(u32 length) const
  { return View<T>::range(_data, std::min(size, length)); }
  constexpr View<T> slice(u32 length)
  { return View<T>::range(_data, std::min(size, length)); }
  constexpr View<T> slice(u32 begin, u32 end) const;
  constexpr const T& operator[](const i32 index) const;
  constexpr T& operator[](const i32 index);
  constexpr T& last() const
  { return _data[size-1]; }
  constexpr T& first() const
  { return _data[0]; }
  constexpr const T* begin() const
  { return _data; }
  constexpr const T* end() const
  { return _data+size; }
  constexpr T* begin()
  { return _data; }
  constexpr T* end()
  { return _data+size; }

  constexpr T* data() { return _data; }
  constexpr const T* data() const { return _data; }
  constexpr u32 len() const { return size; }
  constexpr bool is_empty() const
  { return size == 0; }

  constexpr void destroy()
  {
    if constexpr(Destroyable<T>)
      for (T& obj : *this)
        obj.destroy();
  }

  serde::Result serialize(serde::SerCallback cb, void* data) const
  { return cb(_data, size*sizeof(T), data); }
  static Opt<Self> deserialize(serde::DeserCallback cb, void* data);

  // defined in algo.hpp
  _ALGO_INDEXABLE_IMPL
};

template <class T, u32 size>
constexpr View<T> Array<T, size>::slice(u32 begin, u32 end) const
{
  assert(end <= size);
  assert(begin <= end);
  return View<T>::range(_data+begin, end-begin);
}

template <class T, u32 size>
constexpr const T& Array<T, size>::operator[](const i32 i) const
{
  const u32 index = i < 0 ? len() + i : i;
  assert(index >= 0);
  assert(index < len());
  return _data[index];
}
template <class T, u32 size>
constexpr T& Array<T, size>::operator[](const i32 i)
{
  const u32 index = i < 0 ? len() + i : i;
  assert(index >= 0);
  assert(index < len());
  return _data[index];
}

template <class T, u32 size>
Opt<Array<T, size>> Array<T, size>::deserialize(
  serde::DeserCallback cb,
  void* data
) {
  Array<T, size> buff;
  if (cb(buff._data, sizeof(T)*size, data))
    return serde::FAILURE;
  return buff;
}

#endif
