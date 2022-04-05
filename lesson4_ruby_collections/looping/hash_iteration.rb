number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish'] AN ARRAY 
counter = 0

loop do
  break if counter == number_of_pets.size # 3 
  current_pet = pets[counter] # 'dogs', 'cats', 'fish'
  current_pet_number = number_of_pets[current_pet] # 2, 4, 1
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end

p number_of_pets.size