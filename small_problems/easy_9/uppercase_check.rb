# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.
require 'pry'

# UPPERCASE =   'A'.upto('Z').to_a

# def uppercase?(string)
#   new_str = string.delete('^a-zA-Z')
#   new_str.chars.all? { |char| UPPERCASE.include?(char) }
# end

# LS alt
# def uppercase?(string)
#   string == string.upcase
# end

# another ALT
def uppercase?(string)
  string = string.chars.delete_if { |char| char =~ /[^a-zA-Z]/ } # deletes character if they are not included in the alphabet
  string.all? { |char| char == char.upcase } # boolean check for whether ALL characters in the remaining array are uppercase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true