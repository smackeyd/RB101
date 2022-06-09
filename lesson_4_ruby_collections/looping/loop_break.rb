loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

=begin
'Hello!' is output one or more times
'Exiting...' is output once (when number is 5)

On each iteration:
number is assigned to a random number between 1 and 10
'Hello!' is output
The if statement checks if number is equal to 5
If so 'Exiting...' is output and break is called (which ends the loop)
If not then the loop repeats
=end