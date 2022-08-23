=begin
Write a method that takes a string, and returns a new string in which every consonant character is doubled.
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
=end
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  new_str = ''
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      2.times { new_str += char }
    else
      new_str += char
    end
  end
  new_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
