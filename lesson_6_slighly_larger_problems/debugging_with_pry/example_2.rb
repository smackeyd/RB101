# logical error
# require "pry"

puts "Please pick an option: 1 or 2"
user_input = gets.chomp.to_i # error here, input is a string 
# binding.pry
if user_input == 1
  puts "You picked option 1"
elsif user_input == 2
  puts "You picked option 2"
else
  puts "Invalid option!!"
end