# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence(string)
  reversed_array = []
  string.split(' ') do |word|
    reversed_array.unshift(word)
  end
  reversed_array.join(' ')
end

p reverse_sentence('Hello World')
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''