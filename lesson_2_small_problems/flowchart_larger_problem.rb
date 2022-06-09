=begin
while user wants to keep going
  - ask the user for a collection of numbers
  - extract the largest one from that collection and save it (METHOD)
  - ask the user if they want to input another collection

return saved list of numbers
=end 

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
  Kernel.puts("Please enter a collection of numbers:")
  collection = gets.chomp.split(" ")
  num = find_greatest(collection.map!{ |n| n.to_i })
  large_numbers.push(num)
  p large_numbers
  
  Kernel.puts("Would you like to add more?")
  answer = gets.chomp.downcase 
  
  if answer == "no"
    keep_going = false
    break 
  end 
  Kernel.puts("Let's go again!")
end 





