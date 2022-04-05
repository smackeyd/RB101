arr = [1, 'two', :three, '4']

p arr.slice(3, 1) # => ["4"]
p arr.slice(3..3) # => ["4"]
p arr.slice(3)    # => "4"