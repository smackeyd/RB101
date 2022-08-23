require 'pry'

### LS SOLUTION ###
def transpose(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    binding.pry
    new_row = (0...number_of_rows).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row
  end
  result
end

### ALT SOLUTION ###
# def transpose(arr)
#   transposed_arr = []
#   arr_column_index = 0

#   loop do
#     arr_column = []
#     arr_row_index = 0

#     loop do
#       arr_column << arr[arr_row_index][arr_column_index]
#       # binding.pry
#       arr_row_index += 1
#       break if arr_row_index == arr.size
#     end

#     transposed_arr << arr_column
#     # binding.pry
#     arr_column_index += 1
#     break if arr_column_index == arr[0].size
#   end

#   transposed_arr
# end

### ANOTHER ALT ###
# def transpose(matrix)
#   number_of_columns = matrix.first.size

# # Create a hash in which the new number of rows equals the number of columns in the given matrix
#   new_matrix = Hash.new(0)
#   (0...number_of_columns).each do |row_number|
#     new_matrix[row_number] = []
#   end

# # Add the number in each column to the appropriate row_number (same as the index number in the current row) in the hash
#   matrix.each do |row|
#     row.each_with_index do |number, index|
#       new_matrix[index] << number
#       # binding.pry
#     end
#   end

# # Create and return the array using the hash values
#   new_matrix.map { |_, row| row }
# end

### THIS ONE THO ###
# def transpose(matrix)
#   first_row, *other_rows = matrix
#   first_row.zip(*other_rows)
# end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]