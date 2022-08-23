# def swapcase(str)
#   str.chars.map {|chr| chr == chr.downcase ? chr.upcase : chr.downcase}.join
# end

# alt
def swapcase(string)
  swapped = string.chars.map do |char|
    ('a'..'z').cover?(char) ? char.upcase : char.downcase
  end
  swapped.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'