def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect          # => ["bob", "kim", "jim"]