def penultimate(string)
  string.split(' ')[-2]
end

# Further Exploration:

def middle_of(string)
  return string if string.size < 2
  string_array = string.split(' ')
  string_array.size.odd? ? halfsies = string_array.size / 2 : halfsies = (string_array.size / 2) - 1
  string_array[halfsies]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
p middle_of("Hello Im Sam") #== "Im"
p middle_of("Oh what a wonderful day it is")
p middle_of("My name is Sam")