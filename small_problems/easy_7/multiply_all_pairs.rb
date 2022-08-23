=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers,
and returns a new Array that contains the product of every pair of numbers that
can be formed between the elements of the two Arrays. The results should be sorted by increasing value.
=end
require 'pry'

# def multiply_all_pairs(arr1, arr2)
#   arr = []
#   arr1.each do |num1|
#     counter = 0
#     loop do
#       break if counter == arr2.size
#       num2 = arr2[counter]
#       arr << (num1 * num2)
#       counter += 1
#     end
#   end
#   arr.sort
# end

# ALT
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]