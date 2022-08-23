numbers = [10, 2, 3, 4, 5]
# puts numbers.shift # removes then outputs the first element in array

while (num = numbers.shift)
  puts num
end

# puts numbers

# The Array#shift method removes and returns the first element in the array.
# When there's nothing to remove, shift returns nil.
# This loop takes advantage of that fact to serve as the loop termination condition.