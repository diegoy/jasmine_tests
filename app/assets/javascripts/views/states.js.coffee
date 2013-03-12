class @States
  constructor: (@states = []) ->

  success: (data) =>
    @states = data
    console.log(data)

  fetch: ->
    $.ajax url: "/states", dataType: "json", success: @success

  all: ->
    @states



