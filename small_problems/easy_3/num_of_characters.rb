=begin
Write a program that will ask a user for an input of a word or multiple words
and give back the number of characters. Spaces should not be counted as a character.
=end

def prompt(msg)
  puts "==> #{msg}"
end

prompt "Please write word or multiple words: "
answer = gets.chomp
characters = ''

answer.each_char { |char| characters += char unless char == ' ' }

prompt "There are #{characters.size} characters in \"#{answer}\"."