def substrings(str)
  result = [] # empty array to store required substrings
  starting_index = 0; # starting/first index initialied BEFORE THE LOOP 

  while (starting_index <= str.length - 2) # the OUTER loop iterates over indexes 0 to the length of the second to last index position
    num_chars = 2 # this is for the length of the substring
    
    while (num_chars <= str.length - starting_index) # inner loop ranges from: CURRENT num_chars to: the original string length minus the CURRENT starting index (string.length - startingIndex)
      substring = str.slice(starting_index, num_chars) # slices from starting index [0, 1, 2, 3, 4, 5] to CURRENT num_chars until (string length - starting index) is >= 2
      result << substring # appends substrings to result array
      num_chars += 1 # goes to the next length of substring 
    end
    
    starting_index += 1 # goes to the next index of the string 
  end
  result # returns result array
end

def is_palindrome?(str)
  str == str.reverse # palindrome - string is the same backwards (case matters)
end

def palindrome_substrings(str)
  result = [] # empty array where palindrome substrings will be pushed to 
  substrings_arr = substrings(str) # array of substrings 2 characters or more FROM SUBSTRINGS METHOD 
  substrings_arr.each do |substring| # iterating through substrings 
    result << substring if is_palindrome?(substring) # appends substrings to result array if SUBSTRING IS A PALINDROME (METHOD)
  end
  result # returns result array 
end

p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []

# for each starting index from 0 through the next to last index position
  # for each substring length from 2 until there are no substrings of that length
    # extract the substring of the indicated length starting at the indicate index position
  # end of inner loop
# end of outer loop.