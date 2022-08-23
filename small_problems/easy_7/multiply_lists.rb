=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers,
and returns a new Array that contains the product of each pair of numbers
from the arguments that have the same index.
You may assume that the arguments contain the same number of elements.
=end
require 'pry'

def multiply_list(arr1, arr2)
  new = []
  counter = 0
  while counter < arr1.size && counter < arr2.size
    el_1 = arr1[counter]
    el_2 = arr2[counter]
    new << el_1 * el_2
    counter += 1
  end
  new
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([2, 4, 6, 8], [8, 6, 4, 2]) == [16, 24, 24, 16]
p multiply_list([10, 20, 30, 40], [1, 2, 3, 4]) == [10, 40, 90, 160]