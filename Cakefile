fs            = require "fs"
path          = require "path"
{spawn, exec} = require "child_process"
util          = require 'util'

# Build the TypeCoffee language from source.

run = (command, cb)->
  proc = exec command
  proc.stderr.on "data", (buffer) -> console.log buffer.toString()
  proc.on        "exit", (status) ->
    process.exit(1) if status != 0
    cb() if typeof cb is "function"

cat = (path)-> fs.readFileSync path, "utf-8"

option "-p", "--prefix [DIR]", "set the installation prefix for `cake install`"

task "build", "build the TypeCoffee language from source", (options)->
  run "coffee -c -o lib src/*.coffee", ->
    console.log "build fin."

task "build:parser", "rebuild the peg parser (run build first)", (options)->
  run "pegjs --cache --plugin ./lib/pegjs-coffee-plugin.js --export-var module.exports src/grammar.pegcoffee lib/parser.js", ->
    console.log "build:parser fin."

task 'build:browser', 'rebuild the merged script for inclusion in the browser', (options)->
  run "browserify lib/typecoffee.js --outfile dist/typecoffee.js --standalone TypeCoffee", ->
    console.log "build:browser fin."
