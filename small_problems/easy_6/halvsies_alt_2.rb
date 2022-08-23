require 'pry'
def halvsies(array)
  first_half = []
  second_half = []

  array.each_with_index do |element, index|
    # binding.pry
    if index < (array.size / 2.0).round
      first_half << element
    else
      second_half << element
    end
  end
  [first_half , second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1, 2, 3, 4, 5, 6, 7, 8, 9])