def is_palindrome?(str)
  str == str.reverse
end

def all_substr_size_two_or_greater(str)
  results = []
  0.upto(str.size - 1) do |start_slice|
    start_slice.upto(str.size - 1) do |end_slice|
      results << str.slice(start_slice..end_slice)
    end
  end
  results.select { |substr| substr.size >= 2 }
end

def palindrome_substrings(str)
  all_substr_size_two_or_greater(str).select { |substr| is_palindrome?(substr) }
end

p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []