=begin
Write a program that prints out groups of words that are anagrams.
Anagrams are words that have the same exact letters in them but in a different order.
=end
require 'pry'

def is_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def anagrams(array)
  anagrams = []
  sorted_words = array.sort_by { |word| word.chars.sort }

  sub_ana = []
  index = 0

  sorted_words.each do |word|
    if sub_ana.empty? || is_anagram?(word, sub_ana[index - 1])
      sub_ana << word
      anagrams << sub_ana if word == sorted_words.last
    else
      anagrams << sub_ana
      sub_ana = []
      index = 0
      sub_ana << word
    end

    index += 1
  end

  anagrams.each { |a| p a if a.size > 1 }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'hello']

anagrams(words)
