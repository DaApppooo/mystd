
class obj:
    def __init__(self):
        self._dat = {}
    def __getattr__(self, name):
        if name.startswith("_"):
            return object.__getattr__(self, name)
        if name not in self._dat:
            raise AttributeError(f"Unknown attribute {repr(name)}")
        return self._dat[name]
    def __setattr__(self, name, val):
        if name.startswith("_"):
            object.__setattr__(self, name, val)
        self._dat[name] = val
def public(*funcs, **others):
    o = obj()
    o._dat.update({f.__name__ : f for f in funcs})
    o._dat.update(others)
    return o

# Example:
def list(first_elem): # "constructor"
    self = obj()
    def append(elem): # A method
        self.L.append(elem)
    def log(): # An other method
        print(self.L)
    self.L = [first_elem] # Attributes can be declared after methods
    return public(append, log) # Select what is made public
    # Monading in the functor space like i understand category theory

L = list(1)
L.append(3)
L.append(5)
L.log()
try:
    print(L.L) # Attribute cannot be accessed
except AttributeError as e:
    print(e)
