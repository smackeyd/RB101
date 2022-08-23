=begin
Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
You may assume that the strings are of different lengths.
=end

def short_long_short(str1, str2)
  new_str = ''
  if str2.size < str1.size
    new_str = str2 + str1 + str2
  elsif str1.size < str2.size
    new_str = str1 + str2 + str1
  else
    new_str = str1 + str2
  end
  new_str
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

p short_long_short('abc', 'abc') == 'abcabc'
