arr1 = ["a", "b", "c"].freeze

arr2 = arr1.dup
arr2 << "d"

p arr2 # => ["a", "b", "c", "d"]
p arr1 # => ["a", "b", "c"]

# dup doesn't preserve the frozen state of the object.