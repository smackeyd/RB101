# Given a collection of integers.

# Iterate through the collection one by one.
#   - save the first value as the starting value.
#   - for each iteration, compare the SAVED value with the CURRENT value.
#   - if the SAVED value is greater, or it's the same
#     - move to the next value in the collection
#   - otherwise, if the CURRENT value is greater
#     - reassign the SAVED value as the CURRENT value

# After iterating through the collection, return the SAVED value.

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

puts find_greatest([1, 2, 3, 100, 7, 8, 0, 67])