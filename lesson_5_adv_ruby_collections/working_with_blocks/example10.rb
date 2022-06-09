array = [[[1, 2], [3, 4]], [5, 6]]

p array[0]
p array[0][0]
p array[0][1]
p array[1]

new_array = array.map do |arr| # sub-array
  arr.map do |el| # element of each sub-array 
    if el.to_s.size == 1    # it's an integer***
      el + 1
    else                    # it's an array
      el.map do |n| # num of each sub-sub-array 
        n + 1
      end
    end
  end
end

p new_array # => [[[2, 3], [4, 5]], [6, 7]]

