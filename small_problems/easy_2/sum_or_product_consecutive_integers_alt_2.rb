VALID_OPERATIONS = %w(s p)

def compute_sum(number)
  (1..number).inject(:+)
end

def compute_product(number)
  (1..number).inject(:*)
end

number = ""
loop do
  puts ">> Please enter an integer greater than 0"
  number = gets.chomp.strip.to_i
  break if number > 0
  puts "Invalid input!"
end

operation = ""
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.strip.downcase
  break if VALID_OPERATIONS.include?(operation)
  puts "Invalid input!"
end

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end