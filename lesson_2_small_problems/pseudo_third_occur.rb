=begin
a method that determines the index of the 3rd occurrence of a given character in a string.
For instance, if the given character is 'x' and the string is 'axbxcdxex',
the method should return 6 (the index of the 3rd 'x').
If the given character does not occur at least 3 times, return nil
=end

require 'pry'

def determine_third(str, char)
  str_array = str.chars
  return nil if str_array.count(char) < 3

  counter = 0
  index = 0

  str_array.each_with_index do |s, idx|
    s == char ? counter += 1 : s
    if counter == 3
      index = idx
      break
    end
  end

  index
end

string = 'axbxcdxex'
puts determine_third(string, 'x') == 6
puts determine_third(string, 'a') == nil