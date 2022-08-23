require 'pry'

### FE 1 ###
def swap!(arr, prev_i, curr_i)
  arr[curr_i], arr[prev_i] = arr[prev_i], arr[curr_i]
  nil
end

def bubble_sort!(arr)
  last_index_to_check = arr.size

  until last_index_to_check <= 1
    last_index_swapped = 0

    1.upto(last_index_to_check-1) do |index|
      if arr[index-1] > arr[index]
        swap!(arr, index-1, index)
        last_index_swapped = index
      end
    end

    last_index_to_check = last_index_swapped
  end
  nil
end

### FE 2 ###
# def bubble_sort!(array)
#   iterations = 1
#   loop do
#     changed = false
#     1.upto(array.size - iterations) do |index|
#       if array[index - 1] > array[index]
#         array[index], array[index - 1] = array[index - 1], array[index]
#         changed = true
#       end
#     end
#     iterations += 1
#     break if changed == false
#   end
#   nil
# end

### FE 3 ###
# def bubble_sort!(arr)
#   end_el = (arr.length - 1)

#   loop do
#     swapped = []

#     0.upto(end_el) do |i|
#       if (arr[i] <=> arr[i + 1]) == 1 # nil when accessing out of bounds element
#         swapped << true
#         arr[i], arr[i + 1] = arr[i + 1], arr[i]
#       end
#     end

#     end_el -= 1
#     break unless swapped.any?
#   end

#   arr
# end

### FE 4 ###
# def bubble_sort!(arr)
#   end_el = (arr.size - 1)

#   loop do
#     new_end = 0

#     1.upto(end_el) do |i| # 1 to begin comparison with 1st two elements
#       [arr[i - 1], arr[i]]
#       if arr[i - 1] > arr[i]
#         arr[i - 1], arr[i] = arr[i], arr[i - 1]
#         new_end = i
#       end
#     end

#     end_el = new_end
#     break if end_el <= 1
#   end

#   arr
# end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)