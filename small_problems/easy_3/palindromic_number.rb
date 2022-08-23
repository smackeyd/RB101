# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

require 'pry'

def palindrome?(word)
  word == word.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

# def num_to_string(num)
#   num.to_s
# end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(10101) == true
p palindromic_number?(200) == false
