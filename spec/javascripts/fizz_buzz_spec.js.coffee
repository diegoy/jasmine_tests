#= require fizz_buzz
describe "FizzBuzz", ->

  it "should not be Fizz or Buzz", ->
    fizzBuzz = new FizzBuzz()
    expect(fizzBuzz.tell(4)).toBe 4

  it "should return Fizz", ->
    fizzBuzz = new FizzBuzz()
    expect(fizzBuzz.tell(3)).toBe "Fizz"
    expect(fizzBuzz.tell(12)).toBe "Fizz"

  it "should return Buzz", ->
    fizzBuzz = new FizzBuzz()
    expect(fizzBuzz.tell(5)).toBe "Buzz"

  it "should return FizzBuzz", ->
    fizzBuzz = new FizzBuzz()
    expect(fizzBuzz.tell(15)).toBe "FizzBuzz"
