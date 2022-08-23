require "pry"

def leading_substrings(string)
  substrings = []
  string.chars.each_index { |index| substrings.push(string[0..index]) }
  # binding.pry
  substrings
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
    # binding.pry
  end
  results
end

# alt with both methods:

# def leading_substrings(string)
#   string.chars.each_index.with_object([]) { |index, array| array << string[0..index] }
# end

# def substrings(string)
#   string.chars.map.with_index { |_, idx| leading_substrings(string[idx..string.size]) }.flatten
# end

p substrings('abcde')