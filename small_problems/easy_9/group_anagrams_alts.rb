require 'pry'
# def anagrams(words)
#   result = words.group_by {|word| word.chars.sort.join}
#   result.each {|k, v| p v unless v.size == 1}
# end

# ANOTHER ONE
# def anagrams(arr)
#   anagrams_list = arr.map do |word1|
#                     arr.select do |word2|
#                       word2.delete(word1).empty?
#                     end
#                   end

#   anagrams_list.uniq!.select! {|subarray| subarray.size > 1}

#   anagrams_list.each do |anagrams|
#     p anagrams
#   end
# end

# ANOTHER ONE
def anagrams(arr)
  # create and populate hash
  hash = {}
  arr.each { |word| hash[word] = word.split('').sort.join }
  # make a new array with all possible word values
  arr_of_values = hash.values.uniq

  # iterate over possible values array to find matches
  arr_of_values.map do |value|
    # populate new hash with groupings from all values that match
    new_hsh = hash.select { |k, v| k if v == value }
    # binding.pry
    # print only the keys from the new hash, as an array
    p new_hsh.keys
  end
end

word_list =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'hello']

anagrams(word_list)