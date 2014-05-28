Template.home.greeting = ->
  "Welcome to boxojoe."

Template.home.events "click input": ->
  console.log "You pressed the button"  if typeof console isnt "undefined"
