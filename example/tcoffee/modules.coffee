module Sayings
    export class Greeter
        greeting::: string
        constructor: (message::: string)->
            @greeting = message
        greet: ()->
            "Hello, " + this.greeting;

greeter = new Sayings.Greeter("world")

button = document.createElement('button')
button.textContent = "Say Hello"
button.onclick = ->
    alert(greeter.greet())


document.body.appendChild(button)
