puts "What is your name?"
name = gets.chomp.capitalize

# Slightly different approach using regex.

if /!/ =~ name
  name.upcase!.chop!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end