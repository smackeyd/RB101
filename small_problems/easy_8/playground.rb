def leading_substrings(string)
  arr = []
  string.chars.each_with_index do |char, idx|
    (string.size - idx).times { arr << string[idx] }
  end

  arr
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']z
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

array = ['a', 'a', 'a', 'b', 'b', 'c']