numbers = [7, 3, 5, 2, 1, 8, 4]

for number in numbers
  counter = 0

  loop do
    counter += 1
    puts counter
    break if counter >= number
  end
  
end