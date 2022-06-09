hsh = { sky: "blue", grass: "green" }
p hsh.to_a # => [[:sky, "blue"], [:grass, "green"]]

# Notice the array that is returned from #to_a contains two other arrays, each sub-array containing a symbol and a string. 
# Each sub-array is equivalent to a key-value pair from the initial hash.

arr = hsh.to_a
p arr[0][0]