# Given the code below, select all the valid ways to return THE VALUE for the hash key :three.

arr = [
  {one: '1', two: 2},
  [{four: 5, three: 6}, :three],
  :three,
  {2=>:two, 3=>:three}
]

p arr[0]
p arr[1][0][:three] # => 6, the VALUE for the hash KEY :three
p arr[2]
p arr[3]