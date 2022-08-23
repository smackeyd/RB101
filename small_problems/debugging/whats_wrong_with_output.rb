require 'pry'

arr = ["9", "8", "7", "10", "11"]

### ORIGINAL CODE ###
# p arr.sort do |x, y|
#     y.to_i <=> x.to_i
#   end

# Expected output: ["11", "10", "9", "8", "7"]
# Actual output: ["10", "11", "7", "8", "9"]

### LS SOLUTION ###
p(
  arr.sort do |x, y|
    y.to_i <=> x.to_i
  end
)

### or ###
p arr.sort { |x, y| y.to_i <=> x.to_i }

### MY SOLUTION ###
new_arr = arr.sort { |x, y| y.to_i <=> x.to_i }
p new_arr
