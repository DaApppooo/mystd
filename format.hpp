#ifndef H_FORMAT
#define H_FORMAT
#include "macros.hpp"
#include "traits.hpp"
#include "allocator.hpp"
#include <concepts>

template <class CharT, Allocator<CharT> allocator = VoidAllocator<CharT>>
struct FormatView
{
  CharT *_begin, *_end;
  FormatView() {}
  FormatView(const FormatView<CharT, allocator>&) = delete;
  FormatView(FormatView<CharT, allocator>&& other)
    : _begin(other._begin), _end(other._end)
  { other._begin = other._end = nullptr; }
  macro CharT*& begin() { return _begin; }
  macro CharT*& end() { return _end; }
  macro const CharT* begin() const { return _begin; }
  macro const CharT* end() const { return _end; }
  macro const CharT* cbegin() const { return _begin; }
  macro const CharT* cend() const { return _end; }
  ~FormatView() { if (_begin) allocator::free(_begin); }
};

template <class T, class CharT = char>
concept Formattable = requires (T obj)
{
   { obj.format() } -> std::convertible_to<FormatView<CharT>>;
} || Primitive<T> || requires (T obj)
{
  { std::format("{}", obj) };
};

template <class T, class CharT = char>
concept Debuggable = requires (T obj)
{ { obj.debug() } -> std::convertible_to<FormatView<CharT>>; };

template <Formattable T>
  requires (!Debuggable<T>)
struct std::formatter<const T, char>
{
  template <class ParseContext>
  macro ParseContext::iterator parse(ParseContext& ctx)
  {
    return ctx.end();
  }

  template <class FmtContext>
  macro FmtContext::iterator format(T obj, FmtContext& ctx) const
  {
    return std::ranges::copy(
      std::move(obj.format()),
      ctx.out()
    ).out;
  }
};
template <Formattable T>
  requires (Debuggable<T>)
struct std::formatter<const T, char>
{
  bool format_instead_of_debug;
  template <class ParseContext>
  macro ParseContext::iterator parse(ParseContext& ctx)
  {
    format_instead_of_debug = ctx.begin() == ctx.end();
    return ctx.end();
  }

  template <class FmtContext>
  macro FmtContext::iterator format(T obj, FmtContext& ctx) const
  {
    return std::ranges::copy(
      std::move(obj.format()),
      ctx.out()
    ).out;
  }
};
template <Debuggable T>
  requires (!Formattable<T>)
struct std::formatter<const T, char>
{
  bool format_instead_of_debug;
  template <class ParseContext>
  macro ParseContext::iterator parse(ParseContext& ctx)
  {
    mut it = ctx.begin();
    if (
      it == ctx.end()
      || *it != ':'
      || (++it == ctx.end())
      || *it != '?'
      || (++it != ctx.end())
    )
      throw std::format_error(
        "Object only supports {:?} format because it is only Debuggable"
      );
    return ctx.end();
  }

  template <class FmtContext>
  macro FmtContext::iterator format(T obj, FmtContext& ctx) const
  {
    return std::ranges::copy(
      std::move(obj.format()),
      ctx.out()
    ).out;
  }
};


#endif
