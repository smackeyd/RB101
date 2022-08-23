# Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case? Alphanumeric characters are alphabetic characters(upper and lowercase) and digits.
require 'pry'

def substrings(string)
  (0...string.size).each_with_object([]) do |start_idx, array|
    (start_idx...string.size).each do |end_idx|
      array << string[start_idx..end_idx]
    end
  end
end

def is_palindrome?(string)
  clean_str = string.delete('^a-zA-Z0-9')
  clean_str == string.reverse && string.size > 1
end

def palindromes(string)
  # binding.pry
  substrings(string).select { |s| is_palindrome?(s) }
end

p palindromes('hello-madam-did-madam-goodbye')