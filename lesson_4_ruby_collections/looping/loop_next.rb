counter = 0

loop do
  counter += 1
  next if counter.odd? # if true skips the rest of current iteration and begins the next one, thus the odd numbers don't get printed
  puts counter
  break if counter > 5 #cant be == because will cause INFINITE LOOP
end