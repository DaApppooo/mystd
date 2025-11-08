
#include <concepts>
#include <type_traits>
template <class T>
concept Destroyable = requires (T d)
{ d.destroy(); };

template <class T>
concept Copiable = requires (T d)
{ { d.copy() } -> std::same_as<T>; };

template <class T>
concept NonPtrIndexable =
   requires { typename T::index_t; }
&& requires { typename T::Indexed; }
&& std::integral<typename T::index_t>
&& requires (T d, T::index_t i)
{
  { d[i] } -> std::same_as<typename T::Indexed&>;
};

template <class T>
concept Indexable =
  NonPtrIndexable<T> || std::is_pointer_v<T>;

// gives ownership to the output value
// and resets self to the init state
// (grossly equivalent to a rust move)
template <class T>
concept Giveable = requires (T g)
{ { g.give() } -> std::same_as<T>; };

