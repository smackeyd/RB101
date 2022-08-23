require 'pry'

### ALT 1 ###
# def rotate_string(string)
#   string[1..] << string[0]
# end

# def rotate_rightmost_digits(num, digits)
#   (num.to_s[0..-digits-1] << rotate_string(num.to_s[-digits..-1])).to_i
# end

### ALT 2 ###
# def rotate_array(array)
#   array = array.dup
#   array << array.shift
# end

# def rotate_rightmost_digits(number, length)
#   start_point = -(length)
#   num_array = number.digits.reverse
#   nums_to_rotate = num_array[start_point..-1]
#   nums_to_keep = num_array[0..start_point-1]
#   binding.pry
#   [nums_to_keep, rotate_array(nums_to_rotate)].join.to_i
# end

### ALT 3 ###
def rotate_rightmost_digits(num, idx)
  num_arr = num.digits.reverse
  num_arr << num_arr.slice!(-idx)
  num_arr.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917