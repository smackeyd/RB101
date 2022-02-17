# numbers = [1, 4, 6, 7, 8, 2]

def find_greatest(numbers)
  iterator = 0
  saved_number = numbers[iterator]
  
  until iterator == numbers.length
    if numbers[iterator] > saved_number
      saved_number = numbers[iterator]
    end
    
    iterator += 1  
  end
  
  saved_number
end 

p find_greatest([1, 2, 10, 3, 87, 7])
  
# p numbers[4]