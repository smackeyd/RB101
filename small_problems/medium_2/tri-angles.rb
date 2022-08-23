require 'pry'

# def triangle(n1, n2, n3)
#   angles = [n1, n2, n3]
#   return :invalid if angles.inject(:+) != 180 || angles.any? { |a| a == 0 }
#   case
#   when angles.any? { |a| a == 90 } then :right
#   when angles.any? { |a| a > 90 } then :obtuse
#   else
#     :acute
#   end
# end

### LS SOLUTION ###
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid