=begin
a method that takes an array of integers, and returns a new array with
every other element from the original array, starting with the first element.
=end

def everyOther(array)
  new_array = []
  array.each_with_index do |n, idx|
    new_array << n if idx.even?
  end
  new_array
end

### ALT ###
# def everyOther(array)
#   new_array = []
#   index = 0

#   loop do
#     index.even? ? new_array << array[index] : new_array
#     index += 1
#     break if index == array.size
#   end

#   new_array
# end

p everyOther([1,4,7,2,5]) == [1,7,5]