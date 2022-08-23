require 'pry'

### MY SOLUTION ###
# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = ''
#   i = -1
#   while i.abs <= words.length
#     reversed_words += words[i] + ' '
#     i -=1
#   end
#   reversed_words.chars.slice(0..-2).join
# end

### LS SOLUTION ###
# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = [words[i]] + reversed_words # ERROR WAS HERE
#     i += 1
#   end

#   reversed_words.join(' ')
# end

### ALT LS SOLUTION ###
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'