# Write a method that takes a positive integer or zero, and converts it to a string representation.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.concat(DIGITS[remainder])
    break if number == 0
  end
  result.reverse
end

p integer_to_string(4321) #= '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
