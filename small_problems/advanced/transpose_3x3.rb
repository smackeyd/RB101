require 'pry'

def transpose(array)
  new = []
  array.size.times { new << Array.new }
  new.each.with_index do |sub_array, idx|
    counter = 0
    until sub_array.size == new.size
      sub_array << array[counter][idx]
      counter += 1
    end
  end
  new
end

### LS SOLUTION ###
# def transpose(array)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

### ALT 1 ###
# def transpose(matrix)
#   new_matrix = []
#   3.times do |i|
#     new_matrix[i] = [matrix[0][i], matrix[1][i], matrix[2][i]]
#   end
#   new_matrix
# end

### ALT 2 ###
# def transpose(matrix)
#   matrix.map.with_index do |_, i|
#     [matrix[0][i], matrix[1][i], matrix[2][i]]
#   end
# end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]