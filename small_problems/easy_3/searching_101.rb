=begin
Write a program that solicits 6 numbers from the user,
then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
=end

def prompt(msg)
  puts "=> #{msg}"
end

numbers = []

prompt("Please enter the first number:")
first = gets.chomp.strip.to_i
numbers << first

prompt("Please enter the second number:")
second = gets.chomp.strip.to_i
numbers << second

prompt("Please enter the third number:")
third = gets.chomp.strip.to_i
numbers << third

prompt("Please enter the fourth number:")
fourth = gets.chomp.strip.to_i
numbers << fourth

prompt("Please enter the fifth number:")
fifth = gets.chomp.strip.to_i
numbers << fifth

prompt("Please enter the last number:")
last = gets.chomp.strip.to_i

if numbers.include? last
  prompt("The number #{last} appears in #{numbers}.")
else
  prompt("The number #{last} does not appear in #{numbers}.")
end
