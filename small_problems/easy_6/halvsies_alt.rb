=begin
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
that contain the first half and second half of the original Array, respectively.
If the original array contains an odd number of elements, the middle element should be placed in the first half Array.
=end
require 'pry'

# def halvsies(array)
#   half_size = (array.size / 2.0).ceil
#   first = array.slice(0, half_size)
#   second = array.slice(half_size, half_size + 1)
#   # binding.pry
#   [first, second]
# end

# another alt
def halvsies(array)
  a = array.size.even? ? array.take(array.size / 2) : array.take(array.size / 2 + 1)
  b = array.size.even? ? array.slice(array.size / 2, array.size / 2) : array.slice(array.size / 2 + 1, array.size / 2)
  [a , b]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1, 2, 3, 4, 5, 6, 7, 8, 9])
