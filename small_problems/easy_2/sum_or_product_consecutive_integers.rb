=begin
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
=end

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp

sum = 0
product = 1

if answer == 's'
  1.upto(integer) { |i| sum += i } 
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
elsif answer == 'p'
  1.upto(integer) { |i| product *= i }
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "Invalid input!"
end