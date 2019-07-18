require 'pry'
require('coins')

describe('coins') do
  it("returns 1 quarter for 25 cents entered") do
      expect(25.count_change).to(eq(1))

    end
  # it("returns 2 dimes for 20 cents entered") do
  #     expect(method(20)).to(eq(2))
  #
  #   end

end
