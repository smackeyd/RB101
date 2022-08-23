=begin
The Array#zip method can be used to produce an extremely compact solution to this method.
Read the documentation for zip, and see if you can come up with a one line solution
(not counting the def and end lines).
=end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([2, 4, 6, 8], [8, 6, 4, 2]) == [16, 24, 24, 16]
p multiply_list([10, 20, 30, 40], [1, 2, 3, 4]) == [10, 40, 90, 160]