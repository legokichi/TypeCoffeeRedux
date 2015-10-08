class Greeter
  greeting::: string
  constructor: (message::: string)->
      @greeting = message
  greet: ()->
      "Hello, #{@greeting}"

greeter = new Greeter "world"

button = document.createElement 'button'
button.textContent = "Say Hello"
button.onclick = ->
    alert greeter.greet()

document.body.appendChild button
