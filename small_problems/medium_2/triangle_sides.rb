require 'pry'

### MY SOLUTION ###
# def triangle(n1, n2, n3)
#   sorted_nums = [n1, n2, n3].sort
#   sum = sorted_nums.inject(:+)

#   case
#   when sorted_nums[0] + sorted_nums[1] <= sorted_nums[2] then :invalid
#   when n1 == n2 && n2 == n3 then :equilateral
#   when n1 == n2 || n1 == n2 || n2 == n3 then :isosceles
#   else
#     :scalene
#   end
# end

### LS SOLUTION ###
# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]
#   largest_side = sides.max

#   case
#   when 2 * largest_side > sides.reduce(:+), sides.include?(0)
#     :invalid
#   when side1 == side2 && side2 == side3
#     :equilateral
#   when side1 == side2 || side1 == side3 || side2 == side3
#     :isosceles
#   else
#     :scalene
#   end
# end

### ALT SOLUTION ###
def triangle(int1, int2, int3)
  arr = [int1, int2, int3].sort
  return :invalid if arr.any? { |num| num < 0 } || arr.first(2).sum <= arr[2]

  case
  when arr.all?(int1) then :equilateral
  when arr.any? { |num| arr.count(num) == 2 } then :isosceles
  else :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid