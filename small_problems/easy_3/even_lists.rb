def evens(array)
  new_arr = []
  array.each_with_index do |num, idx|
    idx.odd? ? new_arr << num : num
  end
  new_arr
end

p evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evens([[1, 2], [3, 4], [5, 6]]) == [[3, 4]]