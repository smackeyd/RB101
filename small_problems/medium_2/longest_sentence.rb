require 'pry'

### MY SOLUTION ###
def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)
  sorted = sentences.sort do |sent1, sent2|
            sent2.size <=> sent1.size
          end

  longest = sorted.first.strip
  length = longest.split(' ').size

  puts sorted.first.strip
  puts "Containing #{length} words."
end

text = File.read('sample_text.txt')
example_text = text
longest_sentence(example_text)

### LS SOLUTION ###
# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"

### FE ALT ###
# def longest_sentence(file_name)
#   text1 = File.read('sample_text.txt')
#   sentences = text1.split(/\.|\?|\!/)
#   end_char = text1.split.select{|word| word if word =~ /[~.?!]/}
#   word_num = sentences.map {|sentence| sentence.split.size}
#   index = word_num.index(word_num.max)
#   puts "#{sentences[index].strip}#{end_char[index][-1]}"
#   puts "Containing #{word_num.max} words"
# end

# longest_sentence('sample_text.txt')