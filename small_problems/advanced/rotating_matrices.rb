require 'pry'

### MY SOLUTION ###
# def transpose(matrix)
#   number_of_columns = matrix.first.size

#   new_matrix = Hash.new(0)
#   (0...number_of_columns).each do |row_number|
#     new_matrix[row_number] = []
#   end

#   matrix.each do |row|
#     row.each_with_index do |number, index|
#       new_matrix[index] << number
#     end
#   end

#   new_matrix.map { |_, row| row }
# end

# def rotate90(matrix)
#   original = transpose(matrix)
#   original.map do |sub_arr|
#     sub_arr.reverse
#   end
# end

### LS SOLUTION ###
# def rotate90(matrix)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map do |row_index|
#       matrix[row_index][column_index]
#     end
#     result << new_row.reverse
#   end
#   result
# end

### ALT SOLUTION ###
# def rotate90(matrix)
#   result = []
#   num_rows = matrix.first.size
#   num_rows.times {result << [] }
#   matrix.each do |sub_array|
#     sub_array.each_with_index do |element, index|
#       result[index].unshift(element)
#     end
#   end
#   result
# end

### ALT WITH FE ###
def rotate90(matrix)
  new_matrix = Array.new(matrix[0].size) { Array.new(matrix.size) }
  # binding.pry
  new_matrix.size.times do |y|
    new_matrix[0].size.times do |x|
      new_matrix[y][x] = matrix[-1 - x][y]
    end
  end
  new_matrix
end

def rotatex(matrix, deg)
  new_matrix = matrix
  (deg / 90).times { new_matrix = rotate90(new_matrix) }
  new_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

### FE ###
p rotatex(matrix1, 180)