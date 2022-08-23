# with include element
# def included?(array, element)
#   array.include?(element) ? true : false
# end

# without include element
def included?(array, element)
  arr = array.select { |el| el == element }
  arr.empty? ? false : true
end

p included?([1,2,3,4,5], 3) == true
p included?([1,2,3,4,5], 6) == false
p included?([], 3) == false
p included?([nil], nil) == true
p included?([], nil) == false