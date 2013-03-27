class @States
  constructor: (@states = []) ->

  success: (data) =>
    @states = data
    console.log(data)

  fetch: (callback=(->)) ->
    $.ajax url: "/states", dataType: "json", success: [@success, callback]

  all: ->
    @states

$ ->
  states = new States()
  $("#fetchStates").click (event)->
    $("#statesList option").remove()
    states.fetch ->
      for state in states.all()
        option = new Option(state.name, state.id)
        $(option).html(state.name)
        $("#statesList").append option

