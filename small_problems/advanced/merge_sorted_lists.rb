require 'pry'

### OBVIOUS SOLUTION ###
# def merge(arr1, arr2)
#   new_arr = []
#   arr1.each { |n| new_arr << n }
#   arr2.each { |n| new_arr << n }
#   new_arr.sort
# end

### LS SOLUTION ###
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    # binding.pry
    while index2 < array2.size && array2[index2] <= value
      # binding.pry
      result << array2[index2]
      index2 += 1
    end
    # binding.pry
    result << value
  end

  result.concat(array2[index2..-1])
end

### ALT ###
# def merge(array1, array2)
#   new_arr = []

#   arr1 = array1.dup
#   arr2 = array2.dup

#   until arr1.empty? || arr2.empty?
#     arr1[0] < arr2[0] ? (new_arr << arr1.shift) : (new_arr << arr2.shift)
#     ## OR ##
#     # new_arr << (arr1[0] < arr2[0] ? arr1.shift : arr2.shift)
#   end

#   new_arr + arr1 + arr2
# end

### ALT 2 ###
# def merge(arr1, arr2)
#   arr1 = arr1.dup
#   arr2 = arr2.dup
#   merged_arr = []

#   until arr1.empty? || arr2.empty?
#     # binding.pry
#     case arr1.first <=> arr2.first
#     when -1
#       merged_arr << arr1.shift
#     when 0
#       merged_arr << arr1.shift
#     when 1
#       merged_arr << arr2.shift
#     end
#   end
#   # binding.pry
#   arr1.empty? ? merged_arr += arr2 : merged_arr += arr1
#   merged_arr
# end

p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) #== [1, 4, 5]