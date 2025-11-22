#ifndef H_MATH
#define H_MATH
#include <complex>
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

// copy any operation onto 'Numeric' (can do more than a simple vector)
template <class Numeric, size_t dim>
struct Vec
{
  using Self = Vec<Numeric, dim>;
  using indexed_type = Numeric;
  using index_t = u32;
  Numeric _data[dim];

  constexpr Vec() { std::fill(_data, _data+dim, Numeric()); }
  
  template <class... Nums>
    requires (sizeof...(Nums) <= dim && (std::is_same_v<Nums, Numeric> && ...))
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

  constexpr Vec(const Self&) = default;
  constexpr Vec(Self&&) = default;
  constexpr Self& operator = (const Self&) = default;
  constexpr Self& operator = (Self&&) = default;

  constexpr Numeric* begin() { return _data; }
  constexpr Numeric* end() { return _data+dim; }
  constexpr const Numeric* begin() const { return _data; }
  constexpr const Numeric* end() const { return _data+dim; }
  constexpr Numeric& first() { return _data[0]; }
  constexpr Numeric& last() { return _data[dim-1]; }
  constexpr Numeric& first() const { return _data[0]; }
  constexpr Numeric& last() const { return _data[dim-1]; }
  constexpr size_t size() const { return dim; }
  constexpr Numeric& operator [] (index_t idx)
  { return _data[idx]; }
  constexpr Numeric& operator [] (index_t idx) const
  { return _data[idx]; }

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
};



}

#endif
