name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again:"
end

puts "Welcome #{name}!"
puts "What would you like to do?"

=begin
You can also see that this small code snippet is roughly divided into 3 parts:

1. variable initialization
2. user input and validation
3. using the variable
=end