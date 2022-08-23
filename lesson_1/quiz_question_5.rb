=begin
Write a method that takes one argument, a sentence string, and returns an array of integers.
The value of each integer in the array should be equal to the
length of the word in the corresponding position in the sentence.
For example, if the sentence was 'To be or not to be' the array of integers would be [2, 2, 2, 3, 2, 2].
=end

require 'pry'

### A ###
def string_lengths(sentence)
  strings = sentence.split
  strings.map { |chars| chars.length }
end

### B ###
# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []

#   strings.each do |string|
#     lengths << string.size
#   end

#   lengths # need to add this here or will not work
# end

### C ###
# def string_lengths(sentence)
#   words = sentence.split
#   word_lengths = []
#   counter = 0

#   while counter < words.size do
#     word_lengths << words[counter].length
#     counter += 1
#   end

#   word_lengths
# end

### D ###
# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []
#   counter = 0 # line changed here

#   until counter == strings.size do
#     word_length = strings[counter].length # line changed here
#     lengths.push(word_length)
#     counter += 1
#   end

#   lengths
# end

puts string_lengths('To be or not to be') == [2, 2, 2, 3, 2, 2]