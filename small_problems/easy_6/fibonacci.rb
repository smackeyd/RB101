=begin
Write a method that calculates and returns the index of the
first Fibonacci number that has the number of digits specified as an argument.
(The first Fibonacci number has index 1.)
=end
require 'pry'

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1 # starting with index 3 (3rd num)
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits
    # binding.pry
    first = second
    second = fibonacci
    # binding.pry
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847