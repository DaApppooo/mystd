#ifndef H_MATH
#define H_MATH
#include <complex>
#include <cstdlib>
#include <functional>
#include <initializer_list>
#ifdef mod
#undef mod
#define __REDEF_MOD
#endif
#include <cmath>
#ifdef __REDEF_MOD
#define mod namespace
#endif
#include "macros.hpp"
#include "types.hpp"

mod math
{
using std::sqrt;
using std::abs;
using std::fmod;
using std::cos;
using std::sin;
using std::tan;
using std::acos;
using std::asin;
using std::atan;
using std::atan2;
using std::cosh;
using std::sinh;
using std::asinh;
using std::acosh;
using std::exp;
using std::frexp;
using std::ldexp;
using std::log;
using std::log10;
using std::modf;
using std::exp2;
using std::log1p;
using std::log2;
using std::logb;
using std::scalbn;
using std::scalbln;
using std::pow;
using std::sqrt;
using std::cbrt;
using std::hypot;
using std::erf;
using std::erfc;
using std::tgamma;
using std::lgamma;
using std::ceil;
using std::floor;
using std::trunc;
using std::round;
using std::lround;
using std::llround;
using std::rint;
using std::lrint;
using std::llrint;
using std::nearbyint;
using std::remainder;
using std::copysign;
using std::nan;
using std::nextafter;
using std::fdim;
using std::fma;
using std::fpclassify;
using std::isfinite;
using std::isinf;
using std::isnan;
using std::isnormal;
using std::signbit;

template <class T>
using Complex = std::complex<T>;
using cf32 = Complex<f32>;
using cf64 = Complex<f64>;

// Copy any operation onto 'Numeric' (can do more than a simple vector).
// No operation is in-place (except for inplace operators, like +=).
template <class Numeric, size_t dim>
struct Vec
{
  using Self = Vec<Numeric, dim>;
  using indexed_type = Numeric;
  using index_t = u32;
  Numeric _data[dim];

  constexpr Vec() {}
  
  template <class... Nums>
    requires (sizeof...(Nums) <= 2 && (std::is_convertible_v<Nums, Numeric> && ...))
  constexpr Vec(Nums... nums)
    : _data{nums...}
  {
    std::fill(_data+sizeof...(Nums), _data+dim, Numeric());
  }
  template <size_t dim2>
  constexpr Vec(const Vec<Numeric, dim2>& other)
  {
    constexpr u32 filled = std::min(dim, dim2);
    std::copy_n(other._data, filled, _data);
    std::fill(_data+filled, _data+dim, Numeric());
  }
  static constexpr Self zeroes()
  {
    Self self;
    std::fill(self._data, self._data+dim, Numeric(0)); 
    return self;
  }
  static constexpr Self ones()
  {
    Self self;
    std::fill(self._data, self._data+dim, Numeric(1)); 
    return self;
  }
  static constexpr Self unit(u32 index)
  {
    Self self;
    std::fill(self._data, self._data+dim, Numeric(0)); 
    self._data[index] = Numeric(index);
    return self;
  }

  constexpr Vec(const Self&) = default;
  constexpr Vec(Self&&) = default;
  constexpr Self& operator = (const Self&) = default;
  constexpr Self& operator = (Self&&) = default;

  // useful if you want to convert between two vec2 structs from different
  // libraries
  template <class T>
    requires (sizeof(T) == sizeof(Self))
  constexpr T to_equiv() const
  {
    T ret;
    std::copy(data(), data()+dim, (Numeric*)&ret);
    return ret;
  }
  template <class T>
  constexpr Vec<T, dim> to() const
  {
    Vec<T, dim> ret;
    for (u32 i = 0; i < dim; i++)
      ret[i] = data()[i];
    return ret;
  }
  constexpr Numeric* begin() { return _data; }
  constexpr Numeric* end() { return _data+dim; }
  constexpr const Numeric* begin() const { return _data; }
  constexpr const Numeric* end() const { return _data+dim; }
  constexpr Numeric& first() { return _data[0]; }
  constexpr Numeric& last() { return _data[dim-1]; }
  constexpr const Numeric& first() const { return _data[0]; }
  constexpr const Numeric& last() const { return _data[dim-1]; }
  constexpr size_t size() const { return dim; }
  constexpr Numeric& operator [] (index_t idx)
  { return _data[idx]; }
  constexpr const Numeric& operator [] (index_t idx) const
  { return _data[idx]; }
  constexpr const Numeric* data() const { return _data; }
  constexpr Numeric* data() { return _data; }

  constexpr Numeric len() const
  {
    Numeric res(0);
    for (const Numeric& x : _data)
      res += x*x;
    return sqrt(res);
  }
  constexpr Numeric dist(const Self& d) const
  { return ((*this) - d).len(); }
  constexpr Numeric dot(const Self& d) const
  {
    Numeric res(0);
    for (u32 i = 0; i < dim; i++)
      res += _data[i] * d._data[i];
    return res;
  }
  constexpr Self norm() const
  {
    const Numeric l = len();
    if (l == 0)
      return *this;
    else
      return (*this) / l;
  }
  constexpr Self clamp(Self min_, Self max_) const
  {
    Self ret;
    for (u32 i = 0; i < dim; i++)
      ret._data[i] = std::clamp(ret._data[i], min_._data[i], max_._data[i]);
    return ret;
  }
  constexpr Self clamp(Numeric min_, Numeric max_) const
  {
    const Numeric l = len();
    if (l == 0)
      return Self(min_);
    else if (l < min_)
      return ((*this) / l) * min_;
    else if (l > max_)
      return ((*this) / l) * max_;
    else
      return *this;
  }
  constexpr Numeric& x() requires (dim > 0) { return _data[0]; }
  constexpr Numeric& y() requires (dim > 1) { return _data[1]; }
  constexpr Numeric& z() requires (dim > 2) { return _data[2]; }
  constexpr Numeric& w() requires (dim > 3) { return _data[3]; }
  constexpr Numeric& x() const requires (dim > 0) { return _data[0]; }
  constexpr Numeric& y() const requires (dim > 1) { return _data[1]; }
  constexpr Numeric& z() const requires (dim > 2) { return _data[2]; }
  constexpr Numeric& w() const requires (dim > 3) { return _data[3]; }
};

#define IP_OP(OP) \
template <class T, size_t dim> \
Vec<T, dim>& operator OP (Vec<T, dim>& a, const T& b) \
{ \
  for (size_t i = 0; i < dim; i++) \
    a[i] OP b; \
  return a; \
} \
template <class T, size_t dim> \
Vec<T, dim>& operator OP (Vec<T, dim>& a, const Vec<T, dim>& b) \
{ \
  for (size_t i = 0; i < dim; i++) \
    a[i] OP b[i]; \
  return a; \
}
IP_OP(+=);
IP_OP(-=);
IP_OP(*=);
IP_OP(/=);
IP_OP(&=);
IP_OP(|=);
IP_OP(%=);
#define OP_OP(OP) \
template <class T, size_t dim> \
Vec<T, dim> operator OP (const Vec<T, dim>& a, const T& b) \
{ \
  Vec<T, dim> self = a; \
  self OP##= b; \
  return a; \
} \
template <class T, size_t dim> \
Vec<T, dim> operator OP (const Vec<T, dim>& a, const Vec<T, dim>& b) \
{ \
  Vec<T, dim> self = a; \
  self OP##= b; \
  return a; \
}
OP_OP(+);
OP_OP(-);
OP_OP(*);
OP_OP(/);
OP_OP(&);
OP_OP(|);
OP_OP(%);
#define CMP_OP(OP) \
template <class T, size_t dim> \
constexpr bool operator OP (const Vec<T, dim>& a, const T& b) \
{ \
  for (size_t i = 0; i < dim; i++) \
    if (!(a[i] OP b)) return false; \
  return true; \
} \
template <class T, size_t dim> \
constexpr bool operator OP (const Vec<T, dim>& a, const Vec<T, dim>& b) \
{ \
  for (size_t i = 0; i < dim; i++) \
    if (!(a[i] OP b[i])) return false; \
  return true; \
}
CMP_OP(==);
CMP_OP(>);
CMP_OP(<);
CMP_OP(>=);
CMP_OP(<=);

template <class T, size_t dim>
constexpr inline Vec<T, dim> operator * (const T& b, const Vec<T, dim>& a)
{ return a * b; }
template <class T, size_t dim>
constexpr Vec<T, dim> operator / (const T& b, const Vec<T, dim>& a)
{
  Vec<T, dim> ret;
  for (size_t i = 0; i < dim; i++)
    ret[i] = b / a[i];
  return ret;
}
#undef CMP_OP
#undef IP_OP
#undef OP_OP

template <class Numeric>
struct Vec<Numeric, 2>
{
  static constexpr size_t dim = 2;
  using Self = Vec<Numeric, 2>;
  using indexed_type = Numeric;
  using index_t = u32;
  Numeric x, y;

  constexpr Vec() {}
  
  constexpr Vec(Numeric x = 0, Numeric y = 0)
    : x(x), y(y) {}
  template <size_t dim2>
  constexpr Vec(const Vec<Numeric, dim2>& other)
  {
    constexpr u32 filled = std::min(dim, dim2);
    std::copy_n(other.data(), filled, data());
    std::fill(data()+filled, data()+dim, Numeric());
  }
  static constexpr Self zeroes()
  { return {Numeric(0), Numeric(0)}; }
  static constexpr Self ones()
  { return {Numeric(1), Numeric(1)}; }
  static constexpr Self unit(u32 index)
  {
    Self self;
    self[index] = 1;
    self[!index] = 0;
    return self;
  }
  static constexpr Self radial(Numeric angle, Numeric radius)
  { return { cos(angle)*radius, sin(angle)*radius }; }

  constexpr Numeric* data() { return &x; }
  constexpr const Numeric* data() const { return &x; }
  // useful if you want to convert between two vec2 structs from different
  // libraries
  template <class T>
    requires (sizeof(T) == sizeof(Self))
  constexpr T to_equiv() const
  {
    T ret;
    ret.x = x;
    ret.y = y;
    return ret;
  }
  template <class T>
  constexpr Vec<T, dim> to() const
  { return { x, y }; }

  constexpr Vec(const Self&) = default;
  constexpr Vec(Self&&) = default;
  constexpr Self& operator = (const Self&) = default;
  constexpr Self& operator = (Self&&) = default;

  constexpr Numeric* begin() { return data(); }
  constexpr Numeric* end() { return data()+dim; }
  constexpr const Numeric* begin() const { return data(); }
  constexpr const Numeric* end() const { return data()+dim; }
  constexpr Numeric& first() { return x; }
  constexpr Numeric& last() { return y; }
  constexpr const Numeric& first() const { return x; }
  constexpr const Numeric& last() const { return y; }
  constexpr size_t size() const { return dim; }
  constexpr Numeric& operator [] (index_t idx)
  { return data()[idx]; }
  constexpr const Numeric& operator [] (index_t idx) const
  { return data()[idx]; }

  constexpr Numeric len() const
  {
    return Numeric(hypot(x, y));
  }
  constexpr Numeric dist(const Self& d) const
  { return ((*this) - d).len(); }
  constexpr Numeric dot(const Self& d) const
  { return x*d.x + y*d.y; }
  constexpr Self norm() const
  {
    const Numeric l = len();
    if (l == 0)
      return *this;
    else
      return (*this) / l;
  }
  constexpr Self orth() const
  { return {-y, x}; }
  constexpr Self clamp(Self min_, Self max_) const
  {
    Self ret;
    ret.x = std::clamp(x, min_.x, max_.x);
    ret.y = std::clamp(y, min_.y, max_.y);
    return ret;
  }
  constexpr Self clamp(Numeric min_, Numeric max_) const
  {
    const Numeric l = len();
    if (l == 0)
      return Self(min_);
    else if (l < min_)
      return ((*this) / l) * min_;
    else if (l > max_)
      return ((*this) / l) * max_;
    else
      return *this;
  }
  constexpr Self yx() const
  { return {y, x}; }
  constexpr Self xx() const
  { return {x, x}; }
  constexpr Self yy() const
  { return {y, y}; }
  constexpr Vec<Numeric, 3> xxx() const
  { return {x, x, x}; }
  
  constexpr Vec<Numeric, 3> yxx() const
  { return {y, x, x}; }
  constexpr Vec<Numeric, 3> xyx() const
  { return {x, y, x}; }
  constexpr Vec<Numeric, 3> xxy() const
  { return {x, x, y}; }

  constexpr Vec<Numeric, 3> xyy() const
  { return {x, y, y}; }
  constexpr Vec<Numeric, 3> yxy() const
  { return {y, x, y}; }
  constexpr Vec<Numeric, 3> yyx() const
  { return {y, y, x}; }
  constexpr Vec<Numeric, 3> yyy() const
  { return {y, y, y}; }
};
template <class T>
using vec2 = Vec<T, 2>;
using fvec2 = vec2<f32>;
using dvec2 = vec2<f64>;
using ivec2 = vec2<i32>;
using uvec2 = vec2<u32>;

template <class Numeric>
struct Vec<Numeric, 3>
{
  static constexpr size_t dim = 3;
  using Self = Vec<Numeric, 3>;
  using indexed_type = Numeric;
  using index_t = u32;
  Numeric x, y, z;

  constexpr Vec() {}
  
  constexpr Vec(Numeric x = 0, Numeric y = 0, Numeric z = 0)
    : x(x), y(y), z(y) {}
  template <size_t dim2>
  constexpr Vec(const Vec<Numeric, dim2>& other)
  {
    constexpr u32 filled = std::min(dim, dim2);
    std::copy_n(other.data(), filled, data());
    std::fill(data()+filled, data()+dim, Numeric());
  }
  static constexpr Self zeroes()
  { return {Numeric(0), Numeric(0), Numeric(0)}; }
  static constexpr Self ones()
  { return {Numeric(1), Numeric(1), Numeric(1)}; }
  static constexpr Self unit(u32 index)
  {
    Self self;
    std::fill(self.data(), self.data()+dim, Numeric(0)); 
    self.data()[index] = Numeric(index);
    return self;
  }

  constexpr Numeric* data() { return &x; }
  constexpr const Numeric* data() const { return &x; }
  // useful if you want to convert between two vec2 structs from different
  // libraries
  template <class T>
    requires (sizeof(T) == sizeof(Self))
  constexpr T to_equiv() const
  {
    T ret;
    ret.x = x;
    ret.y = y;
    ret.z = z;
    return ret;
  }
  template <class T>
  constexpr Vec<T, dim> to() const
  { return { x, y, z }; }

  constexpr Vec(const Self&) = default;
  constexpr Vec(Self&&) = default;
  constexpr Self& operator = (const Self&) = default;
  constexpr Self& operator = (Self&&) = default;

  constexpr Numeric* begin() { return data(); }
  constexpr Numeric* end() { return data()+dim; }
  constexpr const Numeric* begin() const { return data(); }
  constexpr const Numeric* end() const { return data()+dim; }
  constexpr Numeric& first() { return x; }
  constexpr Numeric& last() { return y; }
  constexpr const Numeric& first() const { return x; }
  constexpr const Numeric& last() const { return y; }
  constexpr size_t size() const { return dim; }
  constexpr Numeric& operator [] (index_t idx)
  { return data()[idx]; }
  constexpr const Numeric& operator [] (index_t idx) const
  { return data()[idx]; }

  constexpr Numeric len() const
  {
    return Numeric(hypot(x, y, z));
  }
  constexpr Numeric dist(const Self& d) const
  { return ((*this) - d).len(); }
  constexpr Numeric dot(const Self& d) const
  { return x*d.x + y*d.y; }
  constexpr Self norm() const
  {
    const Numeric l = len();
    if (l == 0)
      return *this;
    else
      return (*this) / l;
  }
  constexpr Self orthx() const
  { return {x, -z, y}; }
  constexpr Self orthy() const
  { return {-z, y, x}; }
  constexpr Self orthz() const
  { return {-y, x, z}; }
  constexpr Self clamp(Self min_, Self max_) const
  {
    Self ret;
    ret.x = std::clamp(x, min_.x, max_.x);
    ret.y = std::clamp(y, min_.y, max_.y);
    ret.z = std::clamp(z, min_.z, max_.z);
    return ret;
  }
  constexpr Self clamp(Numeric min_, Numeric max_) const
  {
    const Numeric l = len();
    if (l == 0)
      return Self(min_);
    else if (l < min_)
      return ((*this) / l) * min_;
    else if (l > max_)
      return ((*this) / l) * max_;
    else
      return *this;
  }
  constexpr Vec<Numeric, 2> xy() const
  { return {x, y}; }
  constexpr Vec<Numeric, 2> yx() const
  { return {y, x}; }
  constexpr Vec<Numeric, 2> zy() const
  { return {z, y}; }
  constexpr Vec<Numeric, 2> yz() const
  { return {y, z}; }
  constexpr Vec<Numeric, 2> xz() const
  { return {x, z}; }
  constexpr Vec<Numeric, 2> zx() const
  { return {z, x}; }
  constexpr Vec<Numeric, 2> xx() const
  { return {x, x}; }
  constexpr Vec<Numeric, 2> yy() const
  { return {y, y}; }
  constexpr Vec<Numeric, 2> zz() const
  { return {y, y}; }
  
  constexpr Vec<Numeric, 3> yxx() const
  { return {y, x, x}; }
  constexpr Vec<Numeric, 3> xyx() const
  { return {x, y, x}; }
  constexpr Vec<Numeric, 3> xxy() const
  { return {x, x, y}; }

  constexpr Vec<Numeric, 3> xyy() const
  { return {x, y, y}; }
  constexpr Vec<Numeric, 3> yxy() const
  { return {y, x, y}; }
  constexpr Vec<Numeric, 3> yyx() const
  { return {y, y, x}; }

  constexpr Vec<Numeric, 3> yxz() const
  { return {y, x, z}; }
  constexpr Vec<Numeric, 3> xyz() const
  { return {x, y, z}; }
  constexpr Vec<Numeric, 3> xxz() const
  { return {x, x, z}; }

  constexpr Vec<Numeric, 3> xzx() const
  { return {x, z, x}; }
  constexpr Vec<Numeric, 3> yzx() const
  { return {y, z, x}; }
  constexpr Vec<Numeric, 3> yyz() const
  { return {y, y, z}; }

  constexpr Vec<Numeric, 3> zxx() const
  { return {z, x, x}; }
  constexpr Vec<Numeric, 3> zyx() const
  { return {z, y, x}; }
  constexpr Vec<Numeric, 3> zxy() const
  { return {z, x, y}; }
  constexpr Vec<Numeric, 3> zyy() const
  { return {z, y, y}; }
  constexpr Vec<Numeric, 3> yzy() const
  { return {y, z, y}; }

  constexpr Vec<Numeric, 3> xxx() const
  { return {x, x, x}; }
  constexpr Vec<Numeric, 3> yyy() const
  { return {y, y, y}; }
  constexpr Vec<Numeric, 3> zzz() const
  { return {z, z, z}; }
};
template <class T>
using vec3 = Vec<T, 3>;
using fvec3 = vec3<f32>;
using dvec3 = vec3<f64>;
using ivec3 = vec3<i32>;
using uvec3 = vec3<u32>;

template <class T>
struct Dual
{
  T re, eps;
  constexpr Dual<T> conj() const { return {re, -eps}; }
};

template <class T>
constexpr Dual<T> operator + (const Dual<T>& a, const Dual<T>& b)
{ return {a.re + b.re, a.eps + b.eps}; }
template <class T>
constexpr Dual<T> operator + (const Dual<T>& a, const T& b)
{ return {a.re + b, a.eps}; }
template <class T>
constexpr Dual<T> operator - (const Dual<T>& a, const Dual<T>& b)
{ return {a.re - b.re, a.eps - b.eps}; }
template <class T>
constexpr Dual<T> operator - (const Dual<T>& a, const T& b)
{ return {a.re - b, a.eps}; }
template <class T>
constexpr Dual<T> operator * (const Dual<T>& a, const T& b)
{ return {a.re * b, a.eps * b}; }
template <class T>
constexpr Dual<T> operator * (const T& b, const Dual<T>& a)
{ return {a.re * b, a.eps * b}; }
template <class T>
constexpr Dual<T> operator * (const Dual<T>& a, const Dual<T>& b)
{ return {a.re * b.re, a.eps * b.re + a.re * b.eps}; }
template <class T>
constexpr Dual<T> operator / (const Dual<T>& a, const T& b)
{ return { a.re / b, a.eps / b }; }
template <class T>
constexpr Dual<T> operator / (const Dual<T>& a, const Dual<T>& b)
{ return (a * b.conj()) / (b.re*b.re); }

template <class T>
constexpr T derivative(const std::function<Dual<T>(Dual<T>)>& f, T at_x)
{ return (f({at_x, 1}) - f({at_x, 0})).eps; }

template <class T, size_t w, size_t h>
struct Matrix
{
  using Self = Matrix<T, w, h>;
  T _data[w*h];

  constexpr Matrix() = default;
  constexpr Matrix(const Self&) = default;
  constexpr Matrix(Self&&) = default;
  constexpr Self& operator = (const Self&) = default;
  constexpr Self& operator = (Self&&) = default;

  template <class... Nums>
    requires (sizeof...(Nums) == w*h
              && (std::is_convertible_v<Nums, T> && ...))
  constexpr Matrix(Nums... nums)
    : _data{(T)nums...} {}

  constexpr Matrix(std::initializer_list<T> L)
  { std::copy(L.begin(), L.end(), _data); }

  
};
using mat2x2f = Matrix<f32, 2, 2>;

}

#endif
