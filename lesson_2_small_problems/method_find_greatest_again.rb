=begin

while user wants to keep going
  - ask the user for a collection of numbers
  - iterate through the collection one by one.
    - save the first value as the starting value.
    - for each iteration, compare the saved value with the current value.
    - if the saved value is greater, or it's the same
      - move to the next value in the collection
    - otherwise, if the current value is greater
      - reassign the saved value as the current value

  - after iterating through the collection, save the largest value into the list.
  - ask the user if they want to input another collection

return saved list of numbers

START

SET large_numbers = []
SET keep_going = true

WHILE keep_going == true
  GET "enter a collection"
  SET collection
  SET largest_number = SUBPROCESS "extract the largest one from that collection"
  large_numbers.push(largest_number)
  GET "enter another collection?"
  IF "yes"
    keep_going = true
  ELSE
    keep_going = false
  IF keep_going == false
    exit the loop

PRINT large_numbers

END
=end
require 'pry'

def find_greatest(numbers)
  saved_number = numbers[0] # variable created making saved_number the first number in the array/collection (0 index)

  numbers.each do |num| # iteration
    if saved_number >= num # where the comparison starts; if saved value is greater or the same, move to
      next # next value in the collection
    else
      saved_number = num # otherwise reassign the SAVED value as CURRENT value
    end
  end

  saved_number # returning the SAVED value
end

large_numbers = []
keep_going = true

while keep_going == true
  current_collection = []

  5.times do
    puts "Please enter a number: "
    num = gets.chomp.to_i
    current_collection << num
  end

  largest_num = find_greatest(current_collection)
  large_numbers << largest_num

  puts "The largest number is #{largest_num}"
  puts "Do you want to add another collection?"
  answer = gets.chomp.downcase
  answer.start_with?('y') ? keep_going : keep_going = false
end

puts "Here is your collection: #{large_numbers}"