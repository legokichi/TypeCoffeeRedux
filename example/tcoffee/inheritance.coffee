class Animal
    name::: string
    constructor: (@name::: string)->
    move: (meters::: number)->
        alert "#{@name} moved #{meters}m."

class Snake extends Animal
    constructor: (name::: string)-> super(name)
    move: ()->
        alert("Slithering...")
        super.move(5)

class Horse extends Animal
    constructor: (name::: string)-> super(name)
    move: ()->
        alert("Galloping...")
        super.move(45)

sam = new Snake("Sammy the Python")
tom::: Animal = new Horse("Tommy the Palomino")

sam.move()
tom.move(34)
