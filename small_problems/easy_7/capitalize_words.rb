=begin
Write a method that takes a single String argument and returns a new string that contains
the original value of the argument with the first character of every word capitalized and all other letters lowercase.
=end
require 'pry'

def word_cap(string)
  new = string.split(' ').map do |str|
          str.chars.each_with_index do |i, idx|
            if idx == 0
              i.upcase!
            else
              i.downcase!
            end
          end.join
        end
  new.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'