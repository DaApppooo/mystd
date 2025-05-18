var Arr = Array;
var nil = null;
class Sel
{
  constructor(f)
  {
    if (Object.prototype.toString.call(f) === '[object Array]')
      this._f = function() { return f; }
    else
      this._f = f;
  }
  sort(F)
  { this._f = function() { return this._f().sort(F); }; return this; }
  map(F)
  { this._f = function() { return this._f().map(F); }; return this; }
  odd()
  { this._f = function() { return this._f().filter((x) => x % 2 == 0); }; return this; }
  even()
  { this._f = function() { return this._f().filter(x => x % 2 == 0); }; return this; }
  filter(F)
  { this._f = function() { return this._f().filter(F) }; return this; }
}
class Vec
{
  constructor()
  {
    this.values = arr();
    this.values.push(...arguments);
  }
  
  get(index)
  {
    if (index > this.dimc())
    {
      return 0;
    }
    return this.values[index];
  }
  dimc(c)
  {
    if (c === undefined)
      return this.values.length;
    this.values.fill(0, this.values.length, this.values.length+c);
    return this;
  }
  dist(other)
  {
    let sq = 0;
    for (let i = 0; i < Math.max(this.dimc(), other.dimc()); i++)
    {
      const v = this.get(i)-other.get(i);
      sq += v*v;
    }
    console.log(sq);
    return Math.sqrt(sq);
  }
  len()
  {
    return this.dist(new Vec());
  }
  angle2()
  {
    return Math.atan2(this.y, this.x);
  }
  mul(val)
  {
    if (Object.prototype.toString.call(val) === '[object Vec]')
      return new Vec(...this.values.map((x,i) => x*val[i]));
    else
      return new Vec(...this.values.map(x => x*val));
  }
  add(val)
  {
    if (Object.prototype.toString.call(val) === '[object Vec]')
      return new Vec(...this.values.map((x,i) => x+val[i]));
    else
      return new Vec(...this.values.map(x => x+val));
  }
  static from_angle(a)
  {
    return Vec(Math.cos(a), Math.sin(a));
  }
  echo()
  {
    console.log(this.values);
    return this;
  }
}
function arr() { return new Arr(); };
function range(start,end,step=1) {
  if (end === undefined)
    return (new Arr()).slen(start).map((_,i) => i*step);
  else
    return (new Arr()).slen(Math.floor((end - start)/step)).map((_,i) => start + i*step);
};
function line()
{
  
}
Arr.prototype.slen = function(c) { this.length = c; return this; };
Arr.prototype.add = function(c) { return this.map(v => v + c); };
Arr.prototype.mul = function(c) { return this.map(v => v * c); };
Arr.prototype.sum = function(start,end,step=1) {
  let r = 0;
  if (end === undefined)
  {
    if (start === undefined)
      start = this.length;
    for (let i = 0; i < start; i+=step)
    {
      r += this[Math.floor(i)];
    }
  }
  else
  {
    for (let i = start; i < end; i+=step)
    {
      r += this[Math.floor(i)];
    }
  }
  return r;
};
Arr.prototype.prod = function(start,end,step=1) {
  let r = 1;
  if (end === undefined)
  {
    if (start === undefined)
      start = this.length;
    for (let i = 0; i < start; i+=step)
    {
      r *= this[Math.floor(i)];
    }
  }
  else
  {
    for (let i = start; i < end; i+=step)
    {
      r *= this[Math.floor(i)];
    }
  }
  return r;
};
Arr.prototype.where = function(F, start,end,step=1)
{
  let r = 1;
  let f;
  if (typeof F !== 'function')
    f = (v) => { return v == F; }
  else
    f = F;
  if (end === undefined)
  {
    if (start === undefined)
      start = this.length;
    for (let i = 0; i < start; i+=step)
    {
      if (f(this[i], i, this))
        return i;
    }
  }
  else
  {
    for (let i = start; i < end; i+=step)
    {
      if (f(this[i], i, this))
        return i;
    }
  }
  return r;
};
Arr.prototype.echo = function(a,b) {
  if (a !== null && b !== null)
  {
    console.log(this.slice(a, b));
  }
  else if (a !== null)
  {
    console.log(a, this);
  }
  else
  {
    console.log(this);
  }
  return this;
};
Arr.prototype.map = function(F) {
  let a = arr().slen(this.length);
  for (let i = 0; i < this.length; i++) {
    a[i] = F(this[i], i, this);
  }
  return a;
};
Arr.prototype.swap = function(a, b)
{
  if (typeof a === 'function')
  {
    for (let i = 0; i < this.length; i++)
    {
      for (let j = i+1; j < this.length; j++)
      {
        if (b === undefined)
        {
          if (a(this[i], this[j], i, j, this))
          {
            let temp = this[i];
            this[i] = this[j];
            this[j] = temp;
          }
        }
        else if (a(this[i],i,this) && b(this[j],j,this))
        {
          let temp = this[i];
          this[i] = this[j];
          this[j] = temp;
        }
      }
    }
  }
  else
  {
    let temp = this[a];
    this[a] = this[b];
    this[b] = temp;
  }
  return this;
}
Arr.prototype.slico = function(o_before, o_after, start, end)
{
  win[o_before] = this.slice(0, start);
  win[o_after] = this.slice(end);
  return this.slice(start, end);
}
Arr.prototype.ifall = function(F, THEN, ELSE)
{
  for (let i = 0; i < this.length; i++) {
    if (!F(this[i], i, this))
        if (typeof ELSE === 'function')
          return this.map(ELSE);
        else if (ELSE == nil)
          return this;
        else
          return ELSE;
  }
  if (typeof THEN === 'function')
    return this.map(THEN);
  else if (THEN == nil)
    return this;
  else
    return THEN;
};
Arr.prototype.ifany = function(F, THEN, ELSE)
{
  for (let i = 0; i < this.length; i++) {
    if (F(this[i], i, this))
    {
      if (typeof THEN === 'function')
        return this.map(THEN);
      else if (THEN == nil)
        return this;
      else
        return THEN;
    }
  }
  if (typeof ELSE === 'function')
    return this.map(ELSE);
  else if (ELSE == nil)
    return this;
  else
    return ELSE;
};
Arr.prototype.ifel = function(F, THEN, ELSE)
{
  for (let i = 0; i < this.length; i++) {
    if (F(this[i], i, this))
    {
      if (typeof THEN === 'function')
        this[i] = THEN(this[i], i, this);
      else if (THEN == nil)
        ;
      else
        this[i] = THEN;
    }
    else
    {
      if (typeof ELSE === 'function')
        this[i] = ELSE(this[i], i, this);
      else if (ELSE == nil)
        ;
      else
        this[i] = ELSE;
    }
  }
  return this;
};
Arr.prototype.any = function(F)
{ return this.ifany(F, true, false); }
Arr.prototype.all = function(F)
{ return this.ifall(F, true, false); }
Arr.prototype.count = function(F)
{
  let c = 0;
  for (let i = 0; i < this.length; i++)
  {
    if (typeof F === 'function')
    {
      if (F(this[i], i, this))
        c++;
    }
    else
    {
      if (F == this[i])
        c++;
    }
  }
  return c;
}
Arr.prototype.while = function(COND, F)
{
  let l = this;
  while (COND(l))
  { l = F(l); }
  return l;
}
Arr.prototype.win = function(size)
{
  let r = arr();
  let _size;
  if (!(typeof size === 'function'))
    _size = () => size;
  else
    _size = size;
  for (let i = 0; i < this.length-size+1; i++)
  {
    r.push(Arr.from(this.slice(i, i+_size(this[i], i, this))));
  }
  return r;
}
Arr.prototype.mapr = function(F)
{
  let r = arr();
  for (let i = 0; i < this.length; i++)
  {
    if (Object.prototype.toString.call(this[i]) === '[object Array]')
    {
      r.push(this[i].mapr(F));
    }
    else
    {
      r.push(F(this[i], i, this));
    }
  }
  return r;
}
Arr.prototype.sel = function()
{
  return new Sel(this);
}
Arr.prototype.join = function()
{
  let r = arr();
  for (let i = 0; i < this.length; i++)
  {
    for (let j = 0; j < this[i].length; j++)
    {
      r.push(this[i][j]);
    }
  }
  return r;
}
Arr.prototype.uniq = function()
{
  return this.filter((x,i) => this.indexOf(x) == i);
}
Number.prototype.echo = function() { console.log(this.toString()); return this; }

for (let i of Object.getOwnPropertyNames(Arr.prototype))
{
  Sel.prototype[i] = function(...param)
  {
    let s = this;
    function _selwrap()
    {
      const r = s._f();
      return Arr.prototype[i].call(r, ...param);
    }
    return new Sel(_selwrap);
  }
}

range(20).add(1).mul(10).win(3).mapr(x => x+1).echo().join().uniq().echo()
new Vec(2,3).echo().add(5).echo().len().echo()

