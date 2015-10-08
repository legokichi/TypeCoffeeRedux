type NameOrNameArray = string | string[]

function createName(name::: NameOrNameArray)
    if typeof name is "string"
    then name
    else name.join(" ")
    
greetingMessage = "Greetings, #{createName(["Sam", "Smith"]) }"
alert(greetingMessage)