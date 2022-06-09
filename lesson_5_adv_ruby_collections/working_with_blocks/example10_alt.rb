ar = [[[1, 2], [3,[100, 105]]], [5, 6], 200, 220, [[[1000,2000], [1500]], [5000]]]

def nested_map(arr)
  arr.map do |el|
    if el.is_a? Array
      nested_map(el)
    else
      el + 1
    end
  end
end

p nested_map(ar) # => [[[2, 3], [4, [101, 106]]], [6, 7], 201, 221, [[[1001, 2001], [1501]], [5001]]]