array = [1, 2, 3, 4]

total = array.inject(5) do |sum, element|
  sum + element
end

p total