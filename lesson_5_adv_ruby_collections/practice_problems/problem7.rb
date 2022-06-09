a = 2
b = [5, 8]

arr = [a, b]
p arr # [2, [5, 8]]

arr[0] += 2
arr[1][0] -= a

p arr # [4, [3, 8]]

p a # DOES NOT CHANGE
p b # DOES CHANGE 