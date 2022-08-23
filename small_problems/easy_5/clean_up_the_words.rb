=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
If one or more non-alphabetic characters occur in a row, you should only have one space in the result
(the result should never have consecutive spaces).
=end
ALPHABET = ('a'..'z').to_a

def cleanup(string)
  clean = []
  string.chars.each do |char|
    if ALPHABET.include?(char) # use a conditional statement to append a character to the clean_chars array if its incl. in alphabet, & a space otherwise
      clean << char
    else
      clean << ' ' unless clean.last == ' '
    end
  end
  clean.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line?!***bruh^")

=begin
Note that in both our solutions we are returning a new string object. 
If you are unsure after reading a problem description whether you should return a new string object or the same one, that would be a great question to ask an interviewer.
=end 