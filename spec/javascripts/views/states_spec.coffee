
describe "States", ->

  json = [{"id":16,"name":"Paran\u00e1"},{"id":17,"name":"Pernambuco"},{"id":18,"name":"Piau\u00ed"},{"id":19,"name":"Rio de Janeiro"}]

  beforeEach ->
    @states = new States()
    spyOn($, "ajax").andCallFake((options) ->
      options.success(json)
    )

  it "should fetch states from server", ->
    expect(@states.fetch()).not.toBe null

  it "after fetch collection must be an array", ->
    @states.fetch()
    expect(Array.isArray(@states.all())).toBe(true)

  it "should not be empty", ->
    @states.fetch()
    expect(@states.all().length).toBeGreaterThan(0)

  it "should fetch Pernambuco", ->
    @states.fetch()
    filteredStates = @states.all().filter (state) -> 
                                state.name == "Pernambuco"
    expect(filteredStates.length).toBe 1
