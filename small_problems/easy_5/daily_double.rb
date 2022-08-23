=begin
Write a method that takes a string argument and returns a new string that
contains the value of the original string with
all consecutive duplicate characters collapsed into a single character.
You may not use String#squeeze or String#squeeze!.
=end
require 'pry'

# def crunch(string)
#   new_str = []
#   string.each_char do |char|
#     # binding.pry
#     new_str << char unless new_str.last == char
#   end
#   new_str.join
# end

# alt
def crunch(string)
  clean_string = ''
  string.each_char do |chr|
    clean_string << chr unless clean_string[-1] == chr
  end
  clean_string
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''