# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.
require 'pry'
VOWELS = %w(a e i o u A E I O U)

def remove_vowels(arr)
  new_arr = arr.map do |el|
              el.chars.select do |str|
                str unless VOWELS.include?(str)
              end
            end

  new_arr.map { |word| word.join }
end

# alternate

# def remove_vowels(arr)
#   arr.map do |el|
#     el.chars.select do |str|
#       str unless VOWELS.include?(str)
#     end.join
#   end
# end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']