require "pry"

# def substrings(str)
#   (0...str.size).each_with_object([]) do |index, substrings|
#     # binding.pry
#     1.upto(str.size - index) do |length|
#       # binding.pry
#       substrings << str[index, length]
#     end
#   end
# end

# another:

# def substrings(string)
#   (0...string.size).each_with_object([]) do |start_idx, array|
#     (start_idx...string.size).each do |end_idx|
#       array << string[start_idx..end_idx]
#     end
#   end
# end

#another one:

def substrings(string)
  string.chars.map.with_index do |_, outer_i|
    set = string.chars[outer_i..]
    set.map.with_index { |_, inner_i| set[..inner_i].join }
  end.flatten
end

p substrings('abcde')
p substrings('rainbow')