counter = 0

loop do
  puts 'Hello!'
  counter += 1
  break if counter == 5
end

# Notice that counter is initialized outside of the loop. 
# If we had initialized it inside of the loop it would be reassigned to 0 on each iteration and the break condition would never be met.