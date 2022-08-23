def integer_to_string(integer)
   integer.digits.join.reverse
end

p integer_to_string(4321) #= '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

p 456.digits

