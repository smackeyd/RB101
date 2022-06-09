def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    doubled_numbers << current_number * 2
    
    counter += 1
  end
  
  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers

# Note that the original argument is not mutated and that we're returning a new array here.