=begin
Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
The return value should be arranged in order from shortest to longest substring.
=end
require 'pry'

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
    # binding.pry
  end
  result
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# This problem is straightforward; all we need to do is to iterate through the characters of a string,
# returning each substring that starts at the beginning of the string, and ends with the character we are currently iterating.

# The hardest part of this problem is determining the correct looping structure to use;
# we decided to use upto, but any looping structure that works would be fine.

# The expression string[0..index] may need a bit of explanation; it simply returns a substring of string.
# The substring starts at position 0, and ends at position index.