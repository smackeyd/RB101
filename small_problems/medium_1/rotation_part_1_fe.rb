require 'pry'

def rotate_array(arr)
  rotated = arr.partition.with_index { |_, idx| idx > 0 }
  rotated.flatten
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_number(num)
  # binding.pry
  rotate_array(num.digits.reverse).join.to_i
end

p rotate_string("hello")
p rotate_number(12345)