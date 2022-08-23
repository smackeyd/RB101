require 'pry'

### ALT 1 ###
# WORD_TO_DIGIT = %w(zero one two three four five six seven eight nine).zip(('0'..'9').to_a).to_h

# def word_to_digit(string)
#   WORD_TO_DIGIT.each do |word, number|
#     string.gsub!(word, number)
#   end
#   string
# end

### ALT 2 - FE ###
# NUMBERS = %w(zero one two three four five six seven eight nine)
# DIGITS = ('0'..'9')

# def format_phone_number(string)
#   string.gsub(/\d{10}/) do |num|
#     "(#{num[0..2]})#{num[3..5]}-#{num[6..]}"
#   end
# end

# def swap_numbers(array)
# array.map!.with_index do |word, index|
#     if NUMBERS.include?(word.downcase)
#       NUMBERS.index(word.downcase).to_s
#     elsif word == ' ' && DIGITS.include?(array[index - 1])
#       nil
#     else
#       word
#     end
#   end.compact.join
# end

# def word_to_digit(string)
#   strings_array = string.split(/(\W)/)
#   result = swap_numbers(strings_array)
#   format_phone_number(result)
# end

### alt 3 ###
NUMBERS = {'zero' => "0", 'one' => "1", 'two' => "2", 'three' => "3", 'four' => "4", 'five' => "5", 'six' => "6", 'seven'=> "7", 'eight' => "8", 'nine' => "9"}

def word_to_digit(str)
  NUMBERS.each do |key, value|
    str.gsub!(key, value)
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')

