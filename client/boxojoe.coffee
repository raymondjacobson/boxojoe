if Meteor.isClient
  Template.hello.greeting = ->
    "Welcome to boxojoe."

  Template.hello.events "click input": ->

    # template data, if any, is available in 'this'
    console.log "You pressed the button"  if typeof console isnt "undefined"
    return

if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup
