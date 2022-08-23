=begin
Write a method that takes a string with one or more space separated words
returns a hash that shows the number of words of different sizes.
=end
require 'pry'

def word_sizes(words)
  sizes = {}
  words.split(' ').each do |word|
    if sizes.include?(word.size)
      sizes[word.size] += 1
    else
      sizes[word.size] = 1
    end
  end
  sizes.sort.to_h
end

#ALT
# def word_sizes(words)
#   sizes = Hash.new(0)
#   words.split(' ').each do |word|
#     sizes[word.size] += 1
#   end
#   sizes
# end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}