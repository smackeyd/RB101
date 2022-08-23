=begin
Given a string of words separated by spaces,
write a method that takes this string of words and
returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter,
and that the string will always contain at least one word.
You may also assume that each string contains nothing but words and spaces
=end
require 'pry'

def swap(string)
  new_str = string.split(' ')
  new_str.map do |str|
    first =  str[0]
    last = str[-1]
    str[-1] = first
    str[0] = last
  end
  new_str.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'