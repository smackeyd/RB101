=begin
Create a method that takes two integers as arguments. The first argument is a count,
and the second is the first number of a sequence that your method will create.
The method should return an Array that contains the same number of elements as
the count argument, while the values of each element will be multiples of the starting number.
=end
require 'pry'

def sequence(num1, num2)
  seq = [] # We initialize a sequence variable as an empty array
  counter = 0
  loop do
    break if seq.size == num1
    seq.empty? ? seq << num2 : seq << (seq[counter - 1] + num2)
    counter += 1
  end
  seq
end

# alt 1
# def sequence(count, first)
#   sequence = []
#   number = first

#   count.times do
#     sequence << number # append number to our sequence array
#     number += first # increment number by the value of first
#   end

#   sequence
# end

# alt 2
# def sequence(count, first)
#   (1..count).map { |value| value * first }
# end


p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []