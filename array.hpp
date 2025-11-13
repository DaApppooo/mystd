#ifndef H_ARRAY
#define H_ARRAY
#include "list.hpp"
#include "serde.hpp"
#include "traits.hpp"
#include "types.hpp"
#include <algorithm>

template <class T, u32 size>
struct Array
{
  using Self = Array<T, size>;
  using Indexed = T;
  using index_t = i32;
  mutable T _data[size];

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
    const typename It_T::iterator it = v.begin();
    const u32 fill_size = std::min(size, v.len());
    for (u32 i = 0; i < fill_size; i++)
      self._data[i] = *(it++);
    return self;
  }
  template <Iterable It_T>
  static constexpr Self from(const It_T v)
  {
    Self self;
    const typename It_T::iterator it = v.begin();
    for (u32 i = 0; i < size && !(it == v.end()); i++)
      self._data[i] = *(it++);
    return self;
  }

  constexpr View<T> to_view() const
  { return View<T>::range(_data, size); }
  constexpr View<T> slice(u32 length) const
  { return View<T>::range(_data, std::min(size, length)); }
  constexpr View<T> slice(u32 begin, u32 end) const;
  constexpr T& operator[](const i32 index) const;
  constexpr T& last() const
  { return _data[size-1]; }
  constexpr T& first() const
  { return _data[0]; }
  constexpr View<T> begin() const
  { return to_view(); }
  constexpr View<T> end() const
  { return to_view().end(); }

  constexpr T* data() const { return _data; }
  constexpr u32 len() const { return size; }
  constexpr bool is_empty() const
  { return size == 0; }

  serde::Result serialize(serde::SerCallback cb, void* data) const
  { return cb(_data, size*sizeof(T), data); }
  static Opt<Self> deserialize(serde::DeserCallback cb, void* data);
};

template <class T, u32 size>
constexpr View<T> Array<T, size>::slice(u32 begin, u32 end) const
{
  assert(end <= size);
  assert(begin <= end);
  return View<T>::range(_data+begin, end-begin);
}

template <class T, u32 size>
constexpr T& Array<T, size>::operator[](const i32 i) const
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

// formatting stuff
template <class T, u32 size>
struct std::formatter<Array<T, size>, char>
{
  template <class ParseContext>
  constexpr ParseContext::iterator parse(ParseContext& ctx)
  {
    return ctx.end();
  }

  template<class FmtContext>
  constexpr FmtContext::iterator format(
    Array<T, size> l,
    FmtContext& ctx
  ) const {
    std::ostringstream out;
    if (l.len() == 0)
    {
      out << "[]";
    }
    else
    {
      out << '[' << std::format("{}", l[0]);
      for (const T& o : l.slice(1,l.len()))
      {
        out << ", " << std::format("{}", o);
      }
      out << ']';
    }
    return std::ranges::copy(std::move(out).str(), ctx.out()).out;
  }
};

#endif
