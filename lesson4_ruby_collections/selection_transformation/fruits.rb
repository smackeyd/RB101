fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter] 

  transformed_elements << current_element + 's'   # appends transformed string into array

  counter += 1
  break if counter == fruits.size
end

p transformed_elements # NEW ARRAY
p fruits # ORIGINAL ARRAY, UNCHANGED