a = 'apple'
b = ['banana', 'blueberry']
arr = [a, b]

p arr # ["apple", ["banana", "blueberry"]]
p a.object_id
p b.object_id

arr[0] << 's'
p arr # ["apples", ["banana", "blueberry"]]
p a # "apples"

p a.object_id # DOES NOT CHANGE

arr[1][0] += 's'
p arr  # ["apples", ["bananas", "blueberry"]]
p b # ["bananas", "blueberry"]

p b.object_id # DOES NOT CHANGE 