arr = ["a", "b", "c"].freeze
arr[2] << "d"

p arr # => ["a", "b", "cd"]