require 'pry'

# def valid_number?(number)
#   half = (number.digits.size / 2) - 1
#   binding.pry
#   number.digits.size.even? && number.digits.reverse[0..half] == number.digits.reverse[half + 1..]
# end

# def twice(number)
#   valid_number?(number) ? number : number * 2
# end

# another one

def double_number?(digits)
  return false if digits.size.odd?

  mid = digits.size/2 - 1
  left_half   = digits[0..mid]
  right_half  = digits[mid+1..-1]

  left_half == right_half
end

def twice(num)
  double_number?(num.digits) ? num : 2*num
end

# p twice(9)
# p twice(37) == 74
# p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10