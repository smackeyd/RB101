def rotate_item(item)
  arr = convert_to_arr(item)
  arr << arr.shift
  convert_from_arr(arr, item)
end

def convert_to_arr(item)
  if item.class == String
    item.chars
  elsif item.class == Integer
    item.digits.reverse
  else
    item.dup
  end
end

def convert_from_arr(arr, item)
  if item.class == String
    arr.join
  elsif item.class == Integer
    arr.join.to_i
  else
    arr
  end
end

p rotate_item([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_item(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_item(['a']) == ['a']
p rotate_item('hello') == 'elloh'
p rotate_item(12345) == 23451