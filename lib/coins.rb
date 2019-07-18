require 'pry'

class Change
  def initialize
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def count_change(total)
    coins_str = ''
    until (total < 25)
      p total
      total = total - 25
      @quarters += 1
    end
    coins_str += "#{@quarters} quarters, "

    until (total <10)
      total = total - 10
      @dimes += 1
    end
    coins_str += "#{@dimes} dimes, "

    until (total < 5)
      total = total - 5
      @nickels += 1
    end
    coins_str += "#{@nickels} nickels, "

    until (total < 1)
      total = total -1
      @pennies += 1
    end
    coins_str += "and #{@pennies} pennies, "
    coins_str
  end
end


# class Integer
#   def count_change
#     total = self
#     coins_str = ''
#     q = 0
#     d = 0
#     n = 0
#     pe = 0
#     until (total < 25)
#       p total
#       total = total - 25
#       q = q + 1
#     end
#     coins_str += "#{q} quarters, "
#
#     until (total <10)
#       total = total - 10
#       d = d + 1
#     end
#     coins_str += "#{d} dimes, "
#
#     until (total < 5)
#       total = total - 5
#       n = n + 1
#     end
#     coins_str += "#{n} nickels, "
#
#     until (total < 1)
#       total = total -1
#       pe = pe + 1
#     end
#     coins_str += "and #{pe} pennies, "
#     coins_str
#   end
# end

# p 74.count_change()
change = Change.new()
p change.count_change(20)
