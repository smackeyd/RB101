=begin
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What's the tip percentage?"
tip_percentage = gets.chomp.to_f / 100

# p tip_percentage

tip = (bill * tip_percentage).round(2)
# p tip

total = (bill + tip).round(2)
# p total

puts "The tip is #{format("$%0.2f", tip)}"
puts "The total is #{format("$%0.2f", total)}"

# format syntax: %[flags][width][.precision]type