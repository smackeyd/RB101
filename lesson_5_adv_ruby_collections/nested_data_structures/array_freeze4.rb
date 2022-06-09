arr = ["a", "b", "c"].freeze
arr[2] << "d"

p arr # => ["a", "b", "cd"]

# freeze only freezes the object it's called on. If the object it's called on contains other objects, those objects won't be frozen. 
# This also applies to strings within an array.