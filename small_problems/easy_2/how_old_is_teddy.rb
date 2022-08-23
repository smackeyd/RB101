# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

def your_name(name = 'Teddy')
  puts 'What is your name?'
  answer = gets.chomp
  answer.empty? ? name : answer
end

age = rand(20..200)
name = your_name

puts "#{name}'s age is: #{age}!"