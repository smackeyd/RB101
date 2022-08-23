=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments,
with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.
=end
require 'pry'

def interleave(arr1, arr2)
  inter_arr = []
  i = 0
  loop do
    break if arr1[i] == nil && arr2[i] == nil
    inter_arr << arr1[i] unless arr1[i] == nil
    inter_arr << arr2[i] unless arr2[i] == nil
    i += 1
  end
  inter_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([1, 3, 5, 7], [2, 4, 6])