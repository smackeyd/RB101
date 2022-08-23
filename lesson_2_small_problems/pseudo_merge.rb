=begin
A method that takes two arrays of numbers and returns the result of merging the arrays.
The elements of the first array should become the elements at the even indexes of the returned array,
while the elements of the second array should become the elements at the odd indexes.
=end

def merge(array1, array2)
  new_array = []
  idx1 = 0
  idx2 = 0

  loop do
    break if new_array.size == array1.size + array2.size
    new_array << array1[idx1]
    new_array << array2[idx2]
    idx1 += 1
    idx2 += 1
  end

  new_array
end

p merge([1, 2, 3], [4, 5, 6]) == [1, 4, 2, 5, 3, 6]