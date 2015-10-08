# Assigment with type
n::: number = 3

# Pre defined symbol
x::: number
x = 3.14

# Typed Array
list::: number[] = [1..10]

# interface
interface Point
  x::: number
  y::: number
interface Point3D
  z::: number
p::: Point = {x: 3, y: 3}
p3d::: Point3D = {x: 3, y: 3, z: 3}

# Module
module A.B
    export class C
        a::: number
abc::: A.B.C = new A.B.C

# Typed Function
## pre define
f1::: number -> number
f1 = (n) -> n

## annotation
f2::: number -> Point = (n) -> x: n, y: n * 2

## multi arguments
f3::: (number, number) -> number = (m, n) -> m * n

## partial applying
fc::: number -> number -> number
fc = (m) -> (n) -> m * n

# Class with this scope
class X
  # bound to this
  num::: number
  f::: number -> number
  f: (n) ->
    @num = n

_x::: X = new X
n::: number = x.f 3

# Class with implements
class Point
  x::: number
  y::: number

interface Size
  width::: number
  height::: number

class Entity extends Point implements Size
  width::: number
  height::: number
e::: {x::: number, width::: number} = new Entity

# Generics and type arguments
## struct
interface Value<T, U>
    value::: U
interface Id<A, B>
    id::: Value<A, B>
obj::: Id<number, string> =
  id:
    value: 'value'

## function type arguments
map<T, U>::: (T[], (T -> U)) -> U[]
map = (list, fn) ->
  for i in list
    fn(i)
_list::: String[] = map<number, string> [1..10], (n) -> 'i'

## class type arguments
class Class<A>
  f::: number -> number
  f: (a)-> a
  constructor::: A -> Class
  constructor: (a) ->
c = new Class<number>(1)

# and so on
class __Point
    x::: number
    y::: number

interface __Point3D<T> extends __Point
    z::: T


class Hoge<T> extends __Point implements __Point3D<T>
    z::: T

_a::: __Point = {x:0, y:0}