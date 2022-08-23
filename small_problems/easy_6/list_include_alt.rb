require 'pry'

# def included?(array, value)
#   !!array.find_index(value)
# end

# another one
# def included?(array, value)
#   array.each { |element| return true if value == element }
#   false
# end

# another one
def included?(array, number)
  array = array << number
  return true if array.count(number) == 2
  false
end

p included?([1,2,3,4,5], 3) == true
p included?([1,2,3,4,5], 6) == false
p included?([], 3) == false
p included?([nil], nil) == true
p included?([], nil) == false