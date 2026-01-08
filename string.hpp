#ifndef H_STRING
#define H_STRING
#include "allocator.hpp"
#include "buffer.hpp"
#include "format.hpp"

template <class Char = char, Allocator<Char> allocator = CAllocator<Char>>
  requires (!Dropable<Char>)
struct CString
{
  using Self = CString<Char, allocator>;
  using iterator = Char*;
  using indexed_type = Char;
  using index_t = i32;
  mutable Char* _data;
  u32 _cap; // total capacity, including terminating 0 char

  static macro Self init()
  { return {nullptr, 0}; }
  // unintialized buffer
  static macro Self alloc(u32 cap)
  { return {allocator::alloc(cap), 0, cap}; }
  static macro Self filled(const Char& value, u32 size)
  {
    Self self;
    self._data = allocator::alloc(size+1);
    self._cap = size+1;
    std::fill(self._data, self._data+size, value);
    self._data[size] = Char(0);
    return self;
  }
  static macro Self from(const View<const Char>& v)
  {
    Self self;
    self._data = allocator::alloc(v._len+1);
    self._cap = v._len+1;
    std::copy(v.begin(), v.end(), self._data);
    self._data[v._len] = Char(0);
    return self;
  }
  template <Iterable It_T>
    requires Sized<It_T>
  static macro Self from(const It_T& v)
  {
    Self self;
    const u32 l = size(v);
    self._data = allocator::alloc(l+1);
    self._cap = l+1;
    std::copy(v.begin(), v.end(), self._data);
    self._data[l] = Char(0);
    return self;
  }
  template <Iterable It_T>
  static macro Self from(const It_T& v)
  {
    Self self;
    for (const typename It_T::iterator::value_type obj : v)
      self.push(obj);
    return self;
  }

  // check if List state is as expected (eg. if allocation failed or not)
  macro const Char* cstr() const { return _data; }
  macro Char* cstr() { return _data; }
  macro bool ok() const
  { return _data || !_cap; }
  macro bool need_ok() const
  { need(ok()); return ok(); }
  macro bool is_null() const
  { return !_data; }
  static macro Self null()
  { return {._data = nullptr, ._cap = 0}; }
  macro Self& push(const Char element)
  {
    
    const u32 _len = len()+1;
    if (_len > _cap)
      grow_cap();
    if (!ok()) [[unlikely]]
      return *this;
    need(_cap >= _len);
    [[assume(_cap >= _len)]];
    _data[_len-1] = element;
    _data[_len] = 0;
    return *this;
  }
  macro Self& extend(const View<const Char>& ext);
  macro Self& extend(const Char* str);
  macro Self& insert(const Char& element, i32 index);
  macro Self& insert(const View<const Char>& element, i32 index);
  macro Self& insert(const Char* str, i32 index);
  macro Own<Char> pop();
  macro Self& add_cap(u32 size);
  macro Self& realloc();
  macro Own<Self> copy() const;
  macro void drop() const
  { if (_data) allocator::free(_data); _data=nullptr; }
  macro Self& rm(i32 index);
  macro Self& rm(u32 begin, u32 end);
  macro View<Char> to_view() const;
  macro Self& clear();
  macro View<Char> slice(u32 length) const;
  macro View<Char> slice(u32 begin, u32 end) const;
  macro const Char& operator[](const i32 index) const
  {
    const u32 i = index < 0 ? index + len() : index;
    need(i >= 0); need(i < len());
    return _data[i];
  }
  macro Char& operator[](const i32 index)
  {
    const u32 i = index < 0 ? index + len() : index;
    need(i >= 0); need(i < len());
    return _data[i];
  }
  macro const Char& operator[](const u32 i) const
  {
    need(i >= 0); need(i < len());
    return _data[i];
  }
  macro Char& operator[](const u32 i)
  {
    need(i >= 0); need(i < len());
    return _data[i];
  }
  macro Char& last() const
  { return _data[len()-1]; }
  macro Char& first() const
  { return _data[0]; }
  macro Char* begin() const
  { return to_view().begin(); }
  macro Char* end() const
  { return to_view().end(); }

  macro Char* data() const { return _data; }
  macro u32 len() const { return str_len_s(_data); }
  macro u32 cap() const { return _cap; }
  macro Self& cap(u32 new_allocated_size)
  { _data = allocator::alloc(_data, new_allocated_size); return *this; }
  macro Self& len(u32 new_size);
  macro Self& len(Ref<Char> fill_new_with, u32 new_size);
  macro bool is_empty() const
  { return len() == 0; }
  macro u32 grow_cap()
  {
    const u32 grow_size = _cap/2+(_cap<2);
    _cap += grow_size;
    _data = allocator::alloc(_data, _cap+1);
    return grow_size;
  }
  macro Self& shrink_cap(u32 new_cap)
  {
    need(new_cap <= _cap);
    _data = allocator::alloc(_data, new_cap+1);
    return *this;
  }

  inline serde::Result serialize(serde::SerCallback cb, void* data) const
  { return to_view().serialize(cb, data); }
  template <class Self_ = Self>
    requires std::same_as<Self_, Self>
  static Opt<Self_> deserialize(serde::DeserCallback cb, void* data);  
};

template <class Char = char, Allocator<Char> allocator = CAllocator<Char>>
  requires (!Dropable<Char>)
struct String : CustomBuffer<String<Char, allocator>, Char, allocator>
{
  using Self = String<Char, allocator>;
  using Parent = CustomBuffer<String<Char, allocator>, Char, allocator>;
  static macro Self from(const Char* cstr)
  {
    Self self;
    self._len = self._cap = static_cast<u32>(str_len_s(cstr));
    self._data = allocator::alloc(self._len);
    std::copy(cstr, cstr+self._len, self._data);
    return self;
  }
};
// template <class Char = char>
// macro FormatView<Char> format(const String<Char>& self)
// { return {self.begin(), self.end(), VoidAllocator<Char>::free}; }

template <class Char>
struct std::formatter<String<Char>, Char>
{
  macro formatter() {}
  macro formatter(const formatter&) {}
  macro formatter(formatter&&) {}
  macro std::formatter<String<Char>, char>& operator = (const formatter&)
  { return *this; }
  macro std::formatter<String<Char>, char>& operator = (formatter&&)
  { return *this; }
  
  template <class ParseContext>
  macro ParseContext::iterator parse(ParseContext& ctx)
  {
    return ctx.end();
  }

  template <class FmtContext>
  macro FmtContext::iterator format(const String<Char>& obj, FmtContext& ctx) const
  {
    return std::ranges::ref_view(
      obj,
      ctx.out()
    ).out;
  }
};

template <Allocator<char> allocator>
macro String<char, allocator>& operator += (
  String<char, allocator>& a,
  const char* b
) {
  a.extend(View<const char>::cstr(b));
  return a;
}

template <class Char, Allocator<Char> allocator>
macro String<Char, allocator>& operator += (
  String<Char, allocator>& a,
  String<Char, allocator>& b
) {
  a.extend(b.to_view());
  return a;
}

template <Allocator<char> allocator>
macro String<char, allocator> operator + (
  const String<char, allocator>& a,
  const char* b
) {
  mut cpy = a.copy();
  cpy.extend(View<const char>::cstr(b));
  return cpy;
}

template <Allocator<char> allocator>
macro String<char, allocator> operator + (
  const char* a,
  const String<char, allocator>& b
) {
  mut cpy = b.copy();
  cpy.insert(0, View<const char>::cstr(a));
  return cpy;
}

template <class Char, Allocator<Char> allocator>
macro String<char, allocator> operator + (
  const String<Char, allocator>& a,
  const String<Char, allocator>& b
) {
  mut cpy = a.copy();
  cpy.extend(View<const char>::cstr(b));
  return cpy;
}

template <class CharT = char>
struct StringView : View<CharT>
{
  macro operator FormatView<const char> () const
    requires std::same_as<remove_const<CharT>, char>
  { return { this->_begin, this->_begin+this->_len }; }
  macro operator FormatView<const char16_t> () const
    requires std::same_as<remove_const<CharT>, char16_t>
  { return { this->_begin, this->_begin+this->_len }; }
  macro operator FormatView<const char32_t> () const
    requires std::same_as<remove_const<CharT>, char32_t>
  { return { this->_begin, this->_begin+this->_len }; }
  macro operator FormatView<const wchar_t> () const
    requires std::same_as<remove_const<CharT>, wchar_t>
  { return { this->_begin, this->_begin+this->_len }; }
  macro FormatView<CharT> format() const
    requires Formattable<CharT>
  {
    return FormatView<CharT>{
      this->begin,
      this->begin + this->_len,
      VoidAllocator<CharT>::free
    };
  }
};

#endif
