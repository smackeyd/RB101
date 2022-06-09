str = 'abcdefghi'

char1 = str[2]                     # => "c"
char2 = str[2]                     # => "c"

p char1.object_id
p char2.object_id

p char1.object_id == char2.object_id # => false

# STRINGS ARE NOT TRUE COLLECTIONS
