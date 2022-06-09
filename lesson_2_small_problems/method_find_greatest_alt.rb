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

numbers = [1, 4, 200, 86, 78, 8, 288]

p find_greatest(numbers)