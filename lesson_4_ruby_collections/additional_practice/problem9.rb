words = "the flintstones rock"

p words
p words.split 
p words.split.map { |word| word.capitalize }
p words.split.map { |word| word.capitalize }.join()
p words.split.map { |word| word.capitalize }.join(' ')
