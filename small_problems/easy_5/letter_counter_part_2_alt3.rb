# Using a modified clean_str method from one of the previous exercises:
require 'pry'
def clean_str(string)
  string = string.chars
  string = string.map { |char| ('a'..'z').include?(char) ? char : char = '' }.join
end

def word_sizes(string)
  string = string.downcase.split(' ')
  string = string.map { |word| clean_str(word) }
  string.map(&:size).tally
  # binding.pry
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}