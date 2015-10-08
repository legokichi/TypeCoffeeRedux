class Greeter<T>
    greeting::: T
    constructor: (message::: T)->
        this.greeting = message
    greet: ()->
        this.greeting

greeter = new Greeter<string>("Hello, world")

button = document.createElement 'button'
button.textContent = "Say Hello"
button.onclick = ->
    alert greeter.greet()


document.body.appendChild button
