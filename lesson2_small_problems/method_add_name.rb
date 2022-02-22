def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect          # => ["bob", "kim"]

p names + ['lisa'] # example of how you can add an element to an array non-destructively

# remember that re-assignment is not considered a destructive operation
