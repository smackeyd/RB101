def substrings(str)
  results = []
  
  0.upto(str.size - 1) do |start_slice|
    start_slice.upto(str.size - 1) do |end_slice|
      results << str.slice(start_slice..end_slice)
    end
  end
  
  results.select { |substr| substr.size >= 2 }
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