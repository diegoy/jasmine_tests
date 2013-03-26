
describe "States", ->

  json = [{"id":16,"name":"Paran\u00e1"},{"id":17,"name":"Pernambuco"},{"id":18,"name":"Piau\u00ed"},{"id":19,"name":"Rio de Janeiro"}]

  beforeEach ->
    @states = new States()
    spyOn($, "ajax").andCallFake((options) ->
      options.success(json)
    )

  it "should fetch states from server", ->
    expect(@states.fetch()).not.toBe null

  it "should contains Pernambuco states", ->
    @states.fetch()
    found = 0
    filteredStates = @states.all().filter (fetched_state) ->
      is_equal = json.filter (current_state) ->
        fetched_state.name == current_state.name && fetched_state.id == current_state.id
      found += 1 if is_equal

    expect(filteredStates.length).toBe json.length
