=begin
Write a method that takes a positive integer, n, as an argument, and displays a right triangle
whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below)
should have one end at the lower-left of the triangle, and the other end at the upper-right.
=end
require 'pry'

def triangle(num)
  spaces = num - 1
  (num).times do |n|
    puts (' ' * spaces) + ('*' * (n + 1))
    spaces -= 1
  end
end

triangle(5)
#     *
#    **
#   ***
#  ****
# *****

triangle(12)