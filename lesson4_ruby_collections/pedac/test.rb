def substrings(str)
  result = []
  starting_index = 0
  num_chars = 2
  while starting_index <= str.length - 2
    result << str.slice(starting_index, num_chars)
    starting_index += 1
  end
  result
end

p substrings("abcde") 