=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where
n is an odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.
=end
require 'pry'

def diamond(num)
  size = []
  (1..num).to_a.each { |n| n.odd? ? size << '*' * n : n }
  (1..num-2).to_a.reverse.each { |n| n.odd? ? size << '*' * n : n }
  size.each { |s| puts s.center(num) }
end

### LS SOLUTION ###
# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - (2 * distance_from_center)
#   stars = '*' * number_of_stars
#   # binding.pry
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) do |distance|
#     # binding.pry
#     print_row(grid_size, distance)
#   end
#   1.upto(max_distance) { |distance| print_row(grid_size, distance) }
# end

### FE ###
# def diamond(num)
#   size = []
#   (1..num).to_a.each { |n| n.odd? ? size << '*' * n : n }
#   (1..num-2).to_a.reverse.each { |n| n.odd? ? size << '*' * n : n }
#   size
# end

# def empty_diamond(num)
#   diamond = diamond(num)
#   diamond.each do |star|
#     if star.size <= 1
#       next
#     else
#       star.chars.map.with_index do |s, idx|
#         idx == 0 || idx == star.size - 1 ? s : star[idx] = ' '
#       end
#     end
#   end
#   diamond.each { |s| puts s.center(num) }
# end

# empty_diamond(9)

diamond(3)
diamond(5)
diamond(7)
diamond(9)