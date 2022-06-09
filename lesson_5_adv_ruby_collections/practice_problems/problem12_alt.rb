arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

newnew = arr.each_with_object({}) do |inner_arr, hsh|
    hsh[inner_arr[0]] = inner_arr[1]
end 

p newnew
