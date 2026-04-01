from typing import Callable, Any, Tuple
from dataclasses import dataclass

class _Wrap:
  def __init__(self, elems: Tuple[Any, ...]):
    self._elems = elems

class proc:
  def __init__(self, f: Callable[[Any, ...], Any]):
    self._f = f
  def __call__(self, *a, **k):
    return self._f(*a, **k)
  def __ror__(self, data):
    if isinstance(data, _Wrap):
      return self._f(*data._elems)
    else:
      return self._f(data)
class Result[O, E]:
  pass
class Ok[O, E]:
  pass
class Err[O, E]:
  pass
class Result[O, E]:
  def map[O2](self, f: Callable[[O], O2]) -> Result[O2, E]:
    raise NotImplementedError()
  def unwrap(self) -> O:
    raise NotImplementedError()
  def __iter__(self):
    raise NotImplementedError()
  def err(self) -> E:
    raise NotImplementedError()
  def ok(self) -> O:
    raise NotImplementedError()

@dataclass
class Ok[O, E](Result):
  __match_args__ = ("_ok",)
  _ok: O
  def map[O2](self, f: Callable[[O], O2]) -> Ok[O2, E]:
    return Ok(f(self._ok))
  def unwrap(self) -> O:
    return self._ok
  def __iter__(self):
    return iter((self._ok,))
  def err(self) -> E:
    assert False, "Expected Err but got Ok."
  def ok(self) -> O:
    return self._ok

@dataclass
class Err[O, E](Result):
  __match_args__ = ("_err",)
  _err: E
  def map[O2](self, f: Callable[[O], O2]) -> Err[O2, E]:
    return Err(self._err)
  def unwrap(self) -> O:
    assert False, "Expected Ok but got Err."
  def __iter__(self):
    return iter(tuple())
  def err(self) -> E:
    return self._err
  def ok(self) -> O:
    assert False, "Expected Ok but got Err."

@proc
def wrap(*data: Any):
  return tuple(_Wrap(elem) for elem in data)

@proc
def unwrap(*data: Any):
  return data

_map = map
_filter = filter
_print = print
def map(f: Callable[[Any, ...], Any]):
  @proc
  def map_f(data):
    r = type(data)()
    for i in data:
      r = type(data)([*r, f(i)])
    return r
  return map_f

def filter(f: Callable[[Any, ...], Any]):
  @proc
  def filter_f(data):
    r = type(data)()
    for i in data:
      if f(i):
        r = type(data)(*r, i)
    return r
  return filter_f

@proc
def print(*a, sep=" ", end="\n", file=None, flush=False):
  if len(a) == 0:
    @proc
    def print_f(*args):
      _print(*args, sep=sep, end=end, file=file, flush=flush)
      if len(args) > 1:
        return _Wrap(args)
      return args[0]
    return print_f
  else:
    _print(*a, sep=sep, end=end, file=file, flush=flush)
    if len(a) > 1:
      return _Wrap(a)
    return a[0]


