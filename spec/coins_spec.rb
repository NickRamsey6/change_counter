require 'pry'
require('coins')

describe('coins') do
  it("returns 1 quarter for 25 cents entered") do
    change = Change.new(25)
    expect(change.count_change).to(eq("1 quarters, 0 dimes, 0 nickels, and 0 pennies"))
  end
  it("returns 1 dime for 10 cents entered") do
    change = Change.new(10)
    expect(change.count_change).to(eq("0 quarters, 1 dimes, 0 nickels, and 0 pennies"))
  end
  it("returns 1 nickel for 5 cents entered") do
    change = Change.new(5)
    expect(change.count_change).to(eq("0 quarters, 0 dimes, 1 nickels, and 0 pennies"))
  end
  it("returns 1 penny for 1 cent entered") do
    change = Change.new(1)
    expect(change.count_change).to(eq("0 quarters, 0 dimes, 0 nickels, and 1 pennies"))
  end
  it("returns 1 penny, 1 nickel, 1 dime and 1 quarter for 41 cents entered") do
    change = Change.new(41)
    expect(change.count_change).to(eq("1 quarters, 1 dimes, 1 nickels, and 1 pennies"))
  end
end
