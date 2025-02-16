var Arr = Array;
var nil = null;
function arr() { return new Arr(); };
Arr.prototype.slen = function(c) { this.length = c; return this; };
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
  if (!(typeof size === 'function'))
    size = () => size;
  for (let i = 0; i < this.length; i+=size(this[i], i, this))
  {
    r.push(Arr.from(this.slice(i, i+size(this[i], i, this))));
  }
  return r;
}
Arr.prototype.mapr = function(F)
{
  let r = arr();
  for (let i = 0; i < this.length; i++)
  {
    if (typeof this[i] === 'Arr')
    { // todo
      r.push(this[i].mapr(F));
    }
    else
    {
      r.push(F(this[i], i, this));
    }
  }
  return r;
}
Number.prototype.echo = function() { console.log(this.toString()); return this; }

arr().slen(64).map((_, i) => i).echo()
  .win((_, i) => i+1).echo()
  .mapr(v => v > 3 ? v - 3 : 0).echo()

