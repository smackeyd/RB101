require 'pry'

### MY SOLUTION ###
def rotate_digits(num_arr, idx)
  num_arr << num_arr.slice!(idx)
end

def max_rotation(num)
  num_arr = num.to_s.chars
  counter = 0

  loop do
    num_arr = rotate_digits(num_arr, counter)
    counter += 1
    break if counter > num_arr.size - 1
  end

  num_arr.join.to_i
end

### LS SOLUTION ###
# def rotate_array(arr)
#   rotated = arr.partition.with_index { |_, idx| idx > 0 }
#   rotated.flatten
# end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1]) # we replace the last n digits with the rotated digits.
#   all_digits.join.to_i
# end

# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845