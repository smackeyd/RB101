# each_with_object
def reverse(arr)
  arr.each_with_object([]) do |el, a|
    a.unshift(el)
  end
end

# inject
# def reverse(array)
#   array.inject([], :unshift)
# end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
