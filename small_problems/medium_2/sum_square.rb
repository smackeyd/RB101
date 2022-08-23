require 'pry'

### MY SOLUTION ###
def sum_square(number)
  num_array = []
  1.upto(number) { |n| num_array << n**2 }
  num_array.inject(:+)
end

def square_sum(number)
  ((1..number).to_a.inject(:+)) ** 2
end

def sum_square_difference(number)
  square_sum(number) - sum_square(number)
end

### ALT SOLUTION ###
# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end

### ALT 2 ###
# def sum_square_difference(int)
#   arr = (1..int).to_a
#   sum_squared = (arr.sum)**2
#   sum_of_squares = arr.inject { |sum, num| sum + num**2 }

#   sum_squared - sum_of_squares
# end

### ALT 3 ###
# def sum_square_difference(n)
#   ((1..n).reduce(:+))**2 - (1..n).reduce(0) { |sum, x| sum + x**2 }
# end

p sum_square_difference(3) == 22
  # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150