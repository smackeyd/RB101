# a method that takes an array of strings, and returns a string that is all those strings concatenated together

def strings(array)
  new_str = ''
  array.each { |str| new_str += str + ' '}
  new_str.strip
end

arr_of_strings = ['hello', 'my', 'name', 'is', 'sam']
p strings(arr_of_strings)