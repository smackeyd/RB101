require 'pry'

# def rotate_array(arr)
#   rotated = arr.partition.with_index { |_, idx| idx > 0 }
#   rotated.flatten
# end

# LS solution
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# ALT solution
def rotate_array(array)
  arr = array.dup
  arr << arr.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true