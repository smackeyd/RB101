=begin
You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words,
but with each word's characters reversed. Given the method's implementation,
will the returned string be the same object as the one passed in as an argument or a different object?
=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world") # "olleh dlrow"

str = 'hello world'
puts str.object_id # 47435609148580
puts spin_me(str).object_id # 47435609148360

=begin
The method will return a different object.

str.split converts the string into array ['hello', 'world'].
When we call each method on this array and reverse each word inside of the array,
our original array gets mutated and now it's values are ['olleh', 'dlrow'].

So we have mutated the array that we got by splitting the string, but,
when we join this array back into a string, a completely new string is returned.
=end