# def leading_substrings(string)
#   string.chars.each_index.with_object([]) { |index, array| array << string[0..index] }
# end

def leading_substrings(string)
  substrings = []
  string.chars.each_index { |index| substrings.push(string[0..index]) }
  substrings
end

# def leading_substrings(str)
#   substrings_arr = []
#   1.upto(str.size) do |count|
#     substrings_arr << str.slice(0, count)
#   end
#   substrings_arr
# end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']