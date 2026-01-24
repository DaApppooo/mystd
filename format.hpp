#ifndef H_FORMAT
#define H_FORMAT
#include "macros.hpp"
#include "traits.hpp"
#include "allocator.hpp"
#include <format>
#include <functional>
#include <memory>

template <class CharT>
struct FormatView
{
  CharT *_begin, *_end;
  std::function<void(CharT*)> dropper;
  macro FormatView() {}
  macro FormatView(const FormatView<CharT>&) = delete;
  macro FormatView(std::basic_string<CharT>&& fmt_result)
    : _begin(&*fmt_result.begin()),
      _end(&*fmt_result.end())
  {
    const size_t size = fmt_result.size()+1;
    dropper = [size](CharT* p){
      std::allocator<CharT> al;
      al.deallocate(p, size);
    };
    std::construct_at(&fmt_result);
  }
  macro FormatView(FormatView<CharT>&& other)
    : _begin(other._begin), _end(other._end), dropper(other.dropper)
  { other._begin = other._end = nullptr; }
  macro FormatView(Own<CharT*> begin, CharT* end,
             std::function<void(CharT*)>&& dropper)
    : _begin(begin), _end(end), dropper(dropper) {}
  template <Iterable It>
    requires HasAllocator<It>
  static macro FormatView<CharT> from(Own<It> it)
  { return { it.begin(), it.end(), It::allocator::free }; }
  template <Allocator<CharT> alloc>
  static macro FormatView<CharT> from(Own<CharT*> begin, CharT* end)
  { return { begin, end, alloc::free }; }
  template <template <class T> class alloc>
    requires Allocator<alloc<CharT>, CharT>
  static macro FormatView<CharT> from(Own<CharT*> begin, CharT* end)
  { return { begin, end, alloc<CharT>::free }; }
  static macro FormatView<CharT> from(std::basic_string<CharT>&& fmt_result)
  {
    const size_t size = fmt_result.size()+1;
    FormatView<CharT> self = {
      &*fmt_result.begin(),
      &*fmt_result.end(),
      [size](CharT* p){ std::allocator<CharT> al; al.deallocate(p, size); }
    };
    return self;
  }
  macro CharT*& begin() { return _begin; }
  macro CharT*& end() { return _end; }
  macro const CharT* begin() const { return _begin; }
  macro const CharT* end() const { return _end; }
  macro const CharT* cbegin() const { return _begin; }
  macro const CharT* cend() const { return _end; }
  ~FormatView() { if (_begin) dropper(_begin); }
};

template <class T, class CharT = char>
concept _MethFormattable = requires (T obj)
{ { obj.format() } -> std::convertible_to<FormatView<CharT>>; };

template <class T, class CharT = char>
concept _ImplFormattable =
   requires (const T& obj)
   { { format(obj) } -> std::convertible_to<FormatView<CharT>>; }
|| _MethFormattable<T, CharT>;

template <class T, class CharT = char>
concept Formattable = requires (const T& obj)
{
  { format(obj) } -> std::convertible_to<FormatView<CharT>>;
} || Primitive<T>
  || _MethFormattable<T, CharT>
  || requires (T obj)
{
  { std::format("{}", obj) };
};

template <class T, class CharT = char>
  requires _MethFormattable<T, CharT>
FormatView<CharT> format(const T& obj)
{ return obj.format(); }

template <class T, class CharT = char>
concept Debuggable = requires (T obj)
{ { obj.debug() } -> std::convertible_to<FormatView<CharT>>; };

template <_ImplFormattable fmt>
constexpr auto std::format_kind<fmt> = std::range_format::disabled;
template <Debuggable fmt>
constexpr auto std::format_kind<fmt> = std::range_format::disabled;

template <class T, class Char>
  requires (_ImplFormattable<T, char>
            && !Debuggable<T, char>)
struct std::formatter<T, Char>
{
  macro formatter() {}
  macro formatter(const formatter&) {}
  macro formatter(formatter&&) {}
  macro std::formatter<T, char>& operator = (const formatter&)
  { return *this; }
  macro std::formatter<T, char>& operator = (formatter&&)
  { return *this; }
  
  template <class ParseContext>
  macro ParseContext::iterator parse(ParseContext& ctx)
  {
    mut it = ctx.begin();
    while (*it != '}') it++;
    return it;
  }

  template <class FmtContext>
  macro FmtContext::iterator format(T obj, FmtContext& ctx) const
  {
    return std::ranges::copy(
      std::move(::format(obj)),
      ctx.out()
    ).out;
  }
};

template <class T, class Char>
  requires (_ImplFormattable<T, char>
            && Debuggable<T, char>)
struct std::formatter<T, Char>
{
  bool format_instead_of_debug;

  macro formatter() : format_instead_of_debug(false) {}
  macro formatter(const formatter& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
  macro formatter(formatter&& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
  macro std::formatter<T, char>& operator = (const formatter& f)
  { format_instead_of_debug = f; return *this; }
  macro std::formatter<T, char>& operator = (formatter&& f)
  { format_instead_of_debug = f; return *this; }

  template <class ParseContext>
  macro ParseContext::iterator parse(ParseContext& ctx)
  {
    mut it = ctx.begin();
    while (*it != '}')
    {
      if (*it == '?')
        format_instead_of_debug = true;
      ++it;
    }
    return it;
  }

  template <class FmtContext>
  macro FmtContext::iterator format(T obj, FmtContext& ctx) const
  {
    return std::ranges::copy(
      std::move(::format(obj)),
      ctx.out()
    ).out;
  }
};
template <class T, class Char>
  requires (!_ImplFormattable<T, char>
            && Debuggable<T, char>)
struct std::formatter<T, Char>
{
  bool format_instead_of_debug;

  macro formatter() : format_instead_of_debug(false) {}
  macro formatter(const formatter& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
  macro formatter(formatter&& o)
    : format_instead_of_debug(o.format_instead_of_debug) {}
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
    while (*it != '}') it++;
    return it;
  }

  template <class FmtContext>
  macro FmtContext::iterator format(T obj, FmtContext& ctx) const
  {
    return std::ranges::copy(
      std::move(::format(obj)),
      ctx.out()
    ).out;
  }
};

#endif
