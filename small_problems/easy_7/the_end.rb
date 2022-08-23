=begin
Write a method that returns the next to last word in the String passed to it as an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain at least two words.
=end
require 'pry'

# def penultimate(string)
#   size = string.split(' ').size
#   string.split(' ').select.with_index do |str, idx|
#     idx == size - 2
#   end.join
# end

# ALT
def penultimate(words)
  words_array = words.split
  words_array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'