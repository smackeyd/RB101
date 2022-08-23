require 'pry'

# def star(num)
#   max_distance = (num - 1) / 2
#   center = '*' * num
#   display_top_half(max_distance, num)
#   puts center
#   display_bottom_half(max_distance, num)
# end

# def display_top_half(distance, num)
#   distance.downto(1).each do |n|
#     size = []
#     current_distance = n - 1
#     spaces = ' ' * current_distance
#     3.times { size << '*' + spaces }
#     puts size.join.strip.center(num)
#   end
# end

# def display_bottom_half(distance, num)
#   1.upto(distance).each do |n|
#     size = []
#     current_distance = n - 1
#     spaces = ' ' * current_distance
#     3.times { size << '*' + spaces }
#     puts size.join.strip.center(num)
#   end
# end

### LS SOLUTION ###
# def print_row(grid_size, distance_from_center)
#   number_of_spaces = distance_from_center - 1 # spaces go down to zero before middle
#   spaces = ' ' * number_of_spaces
#   output = Array.new(3, '*').join(spaces)
#   # binding.pry
#   puts output.center(grid_size)
# end

# def star(grid_size)
#   max_distance = (grid_size - 1) / 2 # for top and bottom ends

#   max_distance.downto(1) do |distance| # the top
#     print_row(grid_size, distance)
#   end

#   puts '*' * grid_size # the middle

#   1.upto(max_distance) do |distance| # the bottom
#     print_row(grid_size, distance)
#   end
# end

### ALT ###
def star(n)
  spaces = ' ' * (n / 2 - 1)
  line = "*#{spaces}*#{spaces}*"
  top_lines = [line]

  until spaces.empty?
    spaces.chop!
    line = "*#{spaces}*#{spaces}*".center(n)
    top_lines << line
  end

  puts [top_lines, ('*' * n), top_lines.reverse]
end

star(7)
star(9)
star(15)
