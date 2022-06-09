[[1, 2], [3, 4]].map do |arr| # The Array#map method is being called on the multi-dimensional array [[1, 2], [3, 4]]
  puts arr.first
  arr.first
end

# Each inner array is passed to the block in turn and assigned to the local variable arr