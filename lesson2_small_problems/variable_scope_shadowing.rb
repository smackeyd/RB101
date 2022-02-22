a = 7
arr = [1, 2, 3]

arr.each { |a| a += 1 }

puts a # will return 7, local variable

arr.each { |b| a += 1 } # changing block parameter to b

puts a # will return 10 