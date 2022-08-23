require 'pry'

def merge(array1, array2)
  new_arr = []

  arr1 = array1.dup
  arr2 = array2.dup

  until arr1.empty? || arr2.empty?
    arr1[0] < arr2[0] ? (new_arr << arr1.shift) : (new_arr << arr2.shift)
    # binding.pry
  end

  new_arr + arr1 + arr2
end

### LS SOLUTION ###
# def merge_sort(array)
#   return array if array.size == 1
#   sub_array_1 = array[0...array.size / 2]
#   sub_array_2 = array[array.size / 2...array.size]
#   # binding.pry
#   sub_array_1 = merge_sort(sub_array_1)
#   sub_array_2 = merge_sort(sub_array_2)
#   # binding.pry
#   merge(sub_array_1, sub_array_2)
# end


### ALT ###
# def merge_sort(array)
#   merge_pairs(divide(array))
# end

# def divide(array)
#   if array.size <= 1
#     array
#   else
#     middle_index = array.length / 2
#     [divide(array[0...middle_index]), divide(array[middle_index..-1])]
#   end
# end

# p divide([9, 5, 7, 1]) == [[[9], [5]], [[7], [1]]] # Test case

# def merge_pairs(array)
#   if array.size <= 1
#     array
#   else
#     merge(merge_pairs(array.first), merge_pairs(array.last))
#   end
# end

# p merge_pairs([[[9], [5]], [[7], [1]]]) == [1, 5, 7, 9] # Test case


### FE ###
def merge_sort(array)
  return array if array.size == 1
  result = array.each_slice(1).to_a

  loop do
    temp = []
    idx = 0
    while idx < result.size - 1
      temp << merge(result[idx], result[idx + 1])
      idx += 2
      temp << result[idx] if idx == result.size - 1
    end
    result = temp
    return result[0] if result[0].size == array.size
  end
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]