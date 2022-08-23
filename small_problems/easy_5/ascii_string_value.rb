=begin
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)
=end

def ascii_value(string)
  total = 0
  string.chars.each { |str| total += str.ord }
  total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


p 'a'.ord.chr == 'a'
p 'abcde'.ord.chr

=begin
called on longer strings String#ord.chr will return the ascii string value of the first character.
i.e in the case of 'abcde'.ord the return value will be 97 (the acscii value of 'a').
=end