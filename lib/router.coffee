Router.map ->
  @route "home",
    path: "/"
    template: "home"
    layoutTemplate: "layout"

  @route "example",
    path: "/example/:id"
    template: "example"
    layoutTemplate: "layout"
    data: ->
      params = @params
      title: params.id
