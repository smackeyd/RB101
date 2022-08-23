def substrings(str)
  result = [] # empty array to store required substrings
  starting_index = 0; # starting/first index initialied BEFORE THE LOOP

  while (starting_index <= str.length - 1) # the OUTER loop iterates over indexes 0 to the LAST INDEX (size - 1)
    num_chars = 1

    while (num_chars <= str.length - starting_index) # inner loop ranges from: CURRENT num_chars to: the original string length minus the CURRENT starting index (string.length - startingIndex)
      substring = str.slice(starting_index, num_chars) # slices from starting index [0, 1, 2, 3, 4, 5] to CURRENT num_chars until (string length - starting index) is >= 2
      result << substring # appends substrings to result array
      num_chars += 1 # goes to the next length of substring
    end

    starting_index += 1 # goes to the next index of the string
  end
  result.sort { |a, b| a.size <=> b.size } # returns result array
end

p substrings('abcde')