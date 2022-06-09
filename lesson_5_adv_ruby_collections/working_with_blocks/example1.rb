[[1, 2], [3, 4]].each do |arr| # The Array#each method is being called on the multi-dimensional array [[1, 2], [3, 4]]
  puts arr.first
end

# 1
# 3
# => [[1, 2], [3, 4]]

# Each inner array is passed to the block in turn and assigned to the local variable arr
# The Array#first method is called on arr and returns the object at index 0 of the current array - in this case the integers 1 and 3, respectively
# The puts method then outputs a string representation of the integer. puts returns nil and, since this is the last evaluated statement within the block, the return value of the block is therefore nil.
# each doesn't do anything with this returned value though, and since the return value of each is the calling object - in this case the nested array [[1, 2], [3, 4]] - this is what is ultimately returned.