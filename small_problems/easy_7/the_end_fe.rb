=begin
Suppose we need a method that retrieves the middle word of a phrase/sentence.
What edge cases need to be considered? How would you handle those edge cases without ignoring them?
Write a method that returns the middle word of a phrase or sentence.
It should handle all of the edge cases you thought of.
=end

def middle_word(string)
  arr = string.split
  if arr.size.odd?
    arr[arr.size / 2]
  else
    return "There is no middle!"
  end
end


p middle_word("Hello Im Sam") #== "Im"
p middle_word("Oh what a wonderful day it is")
p middle_word("My name is Sam")