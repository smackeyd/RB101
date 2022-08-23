=begin
Write a method that takes an integer argument, and returns an Array of all integers,
in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.
=end

def sequence(num)
  seq = []
  1.upto(num) { |i| seq << i }
  seq
end

# LS alt
# def sequence(number)
#   (1..number).to_a
# end

# FE
# def sequence(num)
#   seq = []
#   if num < 0
#     num.upto(-1) { |i| seq << i }
#     seq.reverse!
#   else
#     1.upto(num) { |i| seq << i }
#   end
#   seq
# end

# p sequence(-4)
# p sequence(-6)

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
