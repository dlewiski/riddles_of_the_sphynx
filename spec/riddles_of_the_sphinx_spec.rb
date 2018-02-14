require("rspec")
require("riddles_of_the_sphinx")
require("pry")

describe("riddle") do
  it("Takes guess from user and determines if it correctly answers riddle") do
    new_riddle = Riddles.new()
    expect(new_riddle.riddle_check(new_riddle.answer)).to(eq(true))
  end
end
