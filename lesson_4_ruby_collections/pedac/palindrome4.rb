def is_palindrome?(str)
  str == str.reverse && str.size >= 2
  # the size is enforced here to avoid having to perform selection on substrings
end

# renamed to all substrings - a handy method I want to have in my back pocket for when I need it
def all_substrings(str)
  results = []
  0.upto(str.size - 1) do |start_slice|
    start_slice.upto(str.size - 1) do |end_slice|
      results << str.slice(start_slice..end_slice)
    end
  end
  results # just return all substrings, no need to select
end

def palindrome_substrings(str)
  all_substrings(str).select { |substr| is_palindrome?(substr) }
end

p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []