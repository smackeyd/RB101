# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(integer)
  integer.inspect.split('').inject(0) { |sum, num| sum + num.to_i }
end

p sum(45)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
p 5678.to_s.chars