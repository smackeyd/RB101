arr1 = ["a", "b", "c"].freeze
arr2 = arr1.clone
arr2 << "d"
# => RuntimeError: can't modify frozen Array

# The main difference between dup and clone is that clone preserves the frozen state of the object.