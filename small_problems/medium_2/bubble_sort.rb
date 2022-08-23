require 'pry'

### MY SOLUTION ###
def bubble_sort!(array)
  loop do
    array.map.with_index do |el, idx|
      next if idx == 0
      if array[idx] < array[idx - 1]
        array[idx], array[idx - 1] = array[idx - 1], array[idx]
      else
        el
      end
    end

    break if array == array.sort
  end
  nil
end

### LS SOLUTION ###
# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       binding.pry
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end
#     binding.pry
#     break unless swapped
#   end
#   nil
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