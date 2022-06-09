a = 1
b = 2
c = 2
d = 3

array = [d, b, a, c]
p array # => [1, 2, 2, 3]

p a <=> b # => -1
p c <=> b # => 0
p d <=> c # => 1

p array.sort