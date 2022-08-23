puts 'Enter a number:'
x = gets.chomp.to_i

if x == 3 then puts "x is 3" end
puts "x is 3" if x == 3

puts "x is NOT 3" unless x == 3