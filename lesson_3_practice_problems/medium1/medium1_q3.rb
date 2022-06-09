def factors(number)
  divisor = number # 80 
  factors = []
  
  while divisor > 0
    factors << number / divisor if number % divisor == 0 # determines if result of the division is an integer number (no remainder)
    divisor -= 1
  end
  
  factors # actual return value from the method, if this isn't here result will be nil 
end

p factors(80)
p factors(130)