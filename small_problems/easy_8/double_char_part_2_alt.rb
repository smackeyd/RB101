# CONSONANTS = ('a'..'z').to_a - %w(a e i o u)
# def double_consonants(string)
#   string.chars.map do |chr|
#     CONSONANTS.include?(chr.downcase) ? chr * 2 : chr
#   end.join
# end

# another alt:

# def double_consonants(string)
#   vowels = %w(a A e E i I o O u U)
#   alphabet = ('a'..'z').to_a
#   chars_to_repeat = alphabet.select { |ltr| !vowels.include?(ltr) }
#   string.chars.map { |char| chars_to_repeat.include?(char.downcase) ? char = char * 2 : char }.join
# end

#another one:

VOWELS = ['a', 'e', 'i', 'o', 'u']
CONSONANTS = ('a'..'z').to_a.delete_if { |char| VOWELS.include?(char) }

def consonant?(char)
  CONSONANTS.include?(char.downcase)
end

def double_consonants(str)
  str.chars.map { |ch| consonant?(ch) ? ch * 2 : ch}.join
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
