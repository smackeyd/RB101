require 'pry'
### MY SOLUTION ###
# NUMBERS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
#             'four' => '4', 'five' => '5', 'six' => '6',
#             'seven' => '7', 'eight' => '8', 'nine' => '9',
#           }

# def word_to_digit(string)
#   new_str = string.split(' ').map do |word|
#     if NUMBERS.keys.include?(word)
#       word = NUMBERS[word]
#     elsif NUMBERS.keys.include?(word[0..-2])
#       NUMBERS[word[0..-2]].to_s + word[-1]
#     else
#       word
#     end
#   end
#   new_str.join(' ')
# end

### LS ALT ###
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'