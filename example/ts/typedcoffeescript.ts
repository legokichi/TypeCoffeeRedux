var n: number,
    x: number,
    list: number[],
    p: Point,
    p3d: Point3D,
    abc: A.B.C,
    f1: ($1: number) => number,
    f2: ($1: number) => Point,
    f3: ($1: number, $2: number) => number,
    fc: ($1: number) => ($1: number) => number,
    _x: X,
    n: number,
    e: {x: number, width: number},
    obj: Id<number, string>,
    map: <T, U>($1:T[], $2:($1: T) => U) => U[],
    _list: string[],
    c: Class<number>,
    _a: __Point;

n = 3;

x = 3.14;

list = [1,2,3,4,5,6,7,8,9,10];

interface Point {
  x: number;
  y: number;
}

interface Point3D extends Point{
  z: number;
}

p = {x: 3, y: 3};
p3d = {x: 3, y: 3, z: 3};

module A.B {
    export class C {
        a: number
    }
}

abc = new A.B.C;

f1 = (n)=> {
  return n;
}

f2 = (n)=> {
  return {
    x: n,
    y: n * 2
  };
};

f3 = (m, n)=> {
  return m * n;
};

fc = (m)=> {
  return (n)=> {
    return m * n;
  };
};

class X {
  num: number;
  f($1: number): number;
  f(n) {
    return this.num = n;
  }
}
_x = new X;
n = _x.f(3);

class CPoint {
  x: number;
  y: number;
}

interface Size{
  width: number;
  height: number;
}

class Entity extends CPoint implements Size {
  width: number;
  height: number;
}
e = new Entity;

interface Value<T, U>{
    value: U;
}

interface Id<A, B>{
    id: Value<A, B>;
}

obj = {
  id: {
    value: 'value'
  }
};

map = (list, fn) =>{
  var i, results;
  results = [];
  for (i in list) {
    results.push(fn(i));
  }
  return results;
}
_list = map<number, string>([1,2,3,4,5,6,8,9,10], (n) => {
    return 'i';
});

class Class<A>{
    f($1:number): number;
    f(a){
        return a;
    }
    constructor($1: A);
    constructor(a){
    }
}
c = new Class<number>(1);

class __Point{
    x: number;
    y: number;
}
interface __Point3D<T> extends Point{
    z: T;
}

class Hoge<T> extends __Point implements __Point3D<T>{
    z: T;
}
_a = {x:0, y:0};