numbers = [7, 3, 5, 2, 1, 8, 4]

numbers.each do |number|
  counter = 1
  number.times do
    puts counter
    counter += 1
  end
end