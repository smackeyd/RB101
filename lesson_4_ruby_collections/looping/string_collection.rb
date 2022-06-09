alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter >= alphabet.size # OR alphabet.length
  puts alphabet[counter]
  counter += 1
end

p alphabet.size