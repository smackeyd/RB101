arr = [[1], [2], [3]].freeze
arr[2] << 4

p arr # => [[1], [2], [3, 4]]

# freeze only freezes the object it's called on. If the object it's called on contains other objects, those objects won't be frozen. 