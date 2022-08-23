p (1..4).each_with_object([]) {|i, array| array.push(i**2) } # => [1, 4, 9, 16]

hash = { hello: 1, goodbye: 2 }

array = hash.each_with_object([]) { |hsh, array| array.push(hsh) }
p array