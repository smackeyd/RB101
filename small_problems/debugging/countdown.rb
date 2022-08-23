def decrease(counter)
  counter - 1 # CHANGE HERE
end

counter = 10

counter.times do # CHANGE HERE
  puts counter
  counter = decrease(counter) # CHANGE HERE
end

puts 'LAUNCH!'