=begin
Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers:
addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.
=end

def prompt(msg)
  puts "==> #{msg}"
end

def sum(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def product(num1, num2)
  num1 * num2
end

def quotient(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1 ** num2
end

integer_1 = nil
loop do
  prompt('Please enter the first number:')
  integer_1 = gets.chomp.to_i
  break if integer_1 > 0
  prompt('Positive integers only!')
end

integer_2 = nil
loop do
  prompt('Please enter the second number:')
  integer_2 = gets.chomp.to_i
  break if integer_2 > 0
  prompt('Positive integers only!')
end

prompt("#{integer_1} + #{integer_2} = #{sum(integer_1, integer_2)}")
prompt("#{integer_1} - #{integer_2} = #{subtraction(integer_1, integer_2)}")
prompt("#{integer_1} * #{integer_2} = #{product(integer_1, integer_2)}")
prompt("#{integer_1} / #{integer_2} = #{quotient(integer_1, integer_2)}")
prompt("#{integer_1} % #{integer_2} = #{remainder(integer_1, integer_2)}")
prompt("#{integer_1} ** #{integer_2} = #{power(integer_1, integer_2)}")
