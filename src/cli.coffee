
parameters = require 'parameters'
docgen = require '.'

options = parameters(
  name: 'docgen'
  description: 'Generate Markdown documentation from source code'
  options: [
    name: 'language'
    shortcut: 'l'
    description: 'Language of the file, default to "en"'
  ,
    name: 'source'
    shortcut: 's'
    description: 'One or multiple files and patterns separated by commas'
  ,
    name: 'destination'
    shortcut: 'd'
    description: 'Output directory'
  ]
).parse process.argv

docgen options, (err, out) ->
  return console.error err if err
  console.log out