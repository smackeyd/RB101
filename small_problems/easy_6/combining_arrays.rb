=begin
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.
=end
def merge(arr1, arr2)
  new_arr = []
  arr1.each { |n| new_arr << n unless new_arr.include?(n) }
  arr2.each { |n| new_arr << n unless new_arr.include?(n) }
  new_arr
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]