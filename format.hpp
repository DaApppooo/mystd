#ifndef H_FORMAT
#define H_FORMAT
#include "macros.hpp"
#include "traits.hpp"
#include "allocator.hpp"
#include <concepts>

template <class CharT,
          Allocator<remove_const<CharT>> allocator
            = VoidAllocator<remove_const<CharT>>
>
struct FormatView
{
  CharT *_begin, *_end;
  FormatView() {}
  FormatView(const FormatView<CharT, allocator>&) = delete;
  FormatView(FormatView<CharT, allocator>&& other)
    : _begin(other._begin), _end(other._end)
  { other._begin = other._end = nullptr; }
  FormatView(Own<CharT*> begin, CharT* end)
    : _begin(begin), _end(end) {}
  template <Iterable It>
  static macro FormatView<CharT, allocator> from(Own<It> it)
  { return { it.begin(), it.end() }; }
  macro CharT*& begin() { return _begin; }
  macro CharT*& end() { return _end; }
  macro const CharT* begin() const { return _begin; }
  macro const CharT* end() const { return _end; }
  macro const CharT* cbegin() const { return _begin; }
  macro const CharT* cend() const { return _end; }
  ~FormatView() { if (_begin) allocator::free(_begin); }
};

template <class T, class CharT = char,
          class allocator = VoidAllocator<CharT>>
concept _MethFormattable = requires (T obj)
{ { obj.format() } -> std::convertible_to<FormatView<CharT, allocator>>; }
  && Allocator<allocator, CharT>;

template <class T, class CharT = char,
          class allocator = VoidAllocator<CharT>>
concept _ImplFormattable =
   requires (const T& obj)
   { { format(obj) } -> std::convertible_to<FormatView<CharT, allocator>>; }
|| _MethFormattable<T, CharT, allocator>
&& Allocator<allocator, CharT>;

template <class T, class CharT = char,
          class allocator = VoidAllocator<CharT>>
concept Formattable = requires (const T& obj)
{
  { format(obj) } -> std::convertible_to<FormatView<CharT, allocator>>;
} || Primitive<T>
  || _MethFormattable<T, CharT, allocator>
  || requires (T obj)
{
  { std::format("{}", obj) };
}
  && Allocator<allocator, CharT>;

template <class T, class CharT = char,
          Allocator<CharT> allocator = VoidAllocator<CharT>>
  requires _MethFormattable<T, CharT, allocator>
FormatView<CharT, allocator> format(const T& obj)
{ return obj.format(); }

template <class T, class CharT = char>
concept Debuggable = requires (T obj)
{ { obj.debug() } -> std::convertible_to<FormatView<CharT>>; };

template <_ImplFormattable T>
  requires (!Debuggable<T>)
struct std::formatter<T, char>
{
  macro formatter() {}
  macro formatter(const formatter&) {}
  macro formatter(formatter&&) {}
  // macro ~formatter() {}
  macro std::formatter<T, char>& operator = (const formatter&)
  { return *this; }
  macro std::formatter<T, char>& operator = (formatter&&)
  { return *this; }
  
  template <class ParseContext>
  macro ParseContext::iterator parse(ParseContext& ctx)
  {
    return ctx.end();
  }

  template <class FmtContext>
  macro FmtContext::iterator format(T obj, FmtContext& ctx) const
  {
    return std::ranges::copy(
      std::move(format(obj)),
      ctx.out()
    ).out;
  }
};

template <_ImplFormattable T>
  requires (Debuggable<T>)
struct std::formatter<T, char>
{
  bool format_instead_of_debug;

  macro formatter() : format_instead_of_debug(false) {}
  macro formatter(const formatter& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
  macro formatter(formatter&& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
  // macro ~formatter() {}
  macro std::formatter<T, char>& operator = (const formatter& f)
  { format_instead_of_debug = f; return *this; }
  macro std::formatter<T, char>& operator = (formatter&& f)
  { format_instead_of_debug = f; return *this; }

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
  requires (!_ImplFormattable<T>)
struct std::formatter<T, char>
{
  bool format_instead_of_debug;

  macro formatter() : format_instead_of_debug(false) {}
  macro formatter(const formatter& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
  macro formatter(formatter&& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
  // macro ~formatter() {}
  macro std::formatter<T, char>& operator = (const formatter& f)
  { format_instead_of_debug = f; return *this; }
  macro std::formatter<T, char>& operator = (formatter&& f)
  { format_instead_of_debug = f; return *this; }
  
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
