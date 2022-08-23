=begin
Write a method that takes a string as an argument and returns a new string in which
every uppercase letter is replaced by its lowercase version,
and every lowercase letter by its uppercase version. All other characters should be unchanged.
=end
require 'pry'

def swapcase(string)
  string.chars.map do |str|
    if str == str.downcase
      str.upcase
    elsif str == str.upcase
      str.downcase
    else
      str
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'