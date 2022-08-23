# x = [1, 2, 3].product([4, 5])
# p x

a = [0, 1, 2]
a1 = [3, 4]
a2 = [5, 6]

mult = a.product(a1)
p mult # => [[0, 3], [0, 4], [1, 3], [1, 4], [2, 3], [2, 4]]
p mult.size # => 6 # a.size * a1.size

big_mult = a.product(a1, a2)
p big_mult
p big_mult.size

p a.product

### ANOTHER EXAMPLE ###
# arr = ["b", "a"]
# arr = arr.product(Array(1..3))
# p arr
# arr.first.delete(arr.first.last)
# p arr

# arr = ["b", "a"]
# arr = arr.product([Array(1..3)])
# p arr
# arr.first.delete(arr.first.last)
# p arr