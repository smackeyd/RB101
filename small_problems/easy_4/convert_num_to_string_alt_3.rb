def integer_to_string(integer)
   num = []
   integer.digits.each { |d| num.unshift(d) }
   num.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(6543210) == '6543210'