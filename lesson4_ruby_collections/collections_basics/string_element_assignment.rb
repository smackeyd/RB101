str = "joe's favorite color is blue"

str[0] = 'J'
str[6] = 'F'
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'

p str 

# Note that this way of modifying a string is a DESTRUCTIVE action; the str string is changed permanently.