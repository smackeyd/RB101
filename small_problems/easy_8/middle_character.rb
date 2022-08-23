=begin
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
If the argument has an odd length, you should return exactly one character.
If the argument has an even length, you should return exactly two characters.
=end
require "pry"

def center_of(string)
  new_str = string.chars
  if string.length.odd?
    new_str.select!.with_index { |ch, idx| idx == (new_str.size / 2) }
  else
    new_str.select!.with_index do |ch, idx|
      idx == ( new_str.size / 2 ) || idx == ( new_str.size / 2 ) - 1
    end
  end
  new_str.join
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
p center_of('boop') == 'oo'