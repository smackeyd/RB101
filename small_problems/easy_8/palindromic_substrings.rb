require 'pry'

def substrings(string)
  (0...string.size).each_with_object([]) do |start_idx, array|
    (start_idx...string.size).each do |end_idx|
      array << string[start_idx..end_idx]
    end
  end
end

def is_palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  substrings(string).select { |s| is_palindrome?(s) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]