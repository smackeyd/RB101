require 'pry'
# Initial Solution
# def reversed_number(num)
#   num.digits.map(&:to_s).join.to_i
# end

# Refactored with inject.
def reversed_number(num)
  num.digits.inject(0) do |sum, n|
    # binding.pry
    sum = sum*10 + n
  end
end

# Logical-steps-based solution
# def reversed_number(num)
#   num.to_s.reverse.to_i
# end

p reversed_number(12345) #== 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
