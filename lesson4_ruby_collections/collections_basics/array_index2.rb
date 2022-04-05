arr = ['a', 'b', 'c', 'd', 'e']

char3 = arr[2]
char4 = arr[2] 

p char3.object_id
p char4.object_id

p char3.object_id == char4.object_id # => true 