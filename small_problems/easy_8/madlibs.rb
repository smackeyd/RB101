def prompt(msg)
  puts "=> #{msg}"
end

prompt "Please enter a noun:"
noun = gets.chomp

prompt "Please enter a verb:"
verb = gets.chomp

prompt "Please enter an adjective:"
adjective = gets.chomp

prompt "Please enter a adverb:"
adverb = gets.chomp

prompt "Do you #{verb} your #{noun} #{adverb}? That's #{adjective}!"
prompt "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
prompt "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."