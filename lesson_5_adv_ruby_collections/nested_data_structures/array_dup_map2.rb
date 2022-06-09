arr1 = ["a", "b", "c"]

arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

p arr1 # => ["A", "B", "C"]
p arr2 # => ["A", "B", "C"] 