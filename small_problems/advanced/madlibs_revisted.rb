require 'pry'

### LS SOLUTION ###
# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS      = %w(fox dog head leg cat tail).freeze
# VERBS      = %w(spins bites licks hurdles).freeze
# ADVERBS    = %w(easily lazily noisly excitedly).freeze

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     binding.pry
#     puts format(line, noun:      NOUNS.sample,
#                       verb:      VERBS.sample,
#                       adjective: ADJECTIVES.sample,
#                       adverb:    ADVERBS.sample)
#   end
# end

### ALT SOLUTION ###
REPLACEMENT_WORDS = {
  '%{adjective}' => [
    'quick', 'lazy', 'sleepy', 'ugly', 'wise', 'humble', 'snarky'],
  '%{noun}' => [ 'fox', 'dog', 'head', 'leg', 'monk', 'dragon', 'sage', 'firetruck'],
  '%{verb}' => ['jumps', 'lifts', 'bites', 'licks', 'kicks', 'defecates'],
  '%{adverb}' => ['easily', 'lazily', 'noisily', 'excitedly', 'magnificently', 'adorably']
}

def madlib(file_path)
  lines = File.readlines(file_path, chomp: true)
  lines.each do | line |
    words = line.split.map do | word |
      word = word.delete("^a-zA-Z{}%")
      # binding.pry
      if REPLACEMENT_WORDS[word]
        REPLACEMENT_WORDS[word].sample
      else
        word
      end
    end

    puts words.join(" ")
  end
end

madlib("madlibs.txt")

### ANOTHER ALT ###
# Algorithm:
#   define constant Hash replacement_words (keys are types of words, values are Arrays of replacement words)
#   iterate through lines of text file:
#     iterate through replacement_words:
#       if the key is found in the line, replace the word with a random word from the key's Array value
#     output the line

# REPLACEMENT_WORDS = {
#   adjective: ['quick', 'lazy', 'sleepy', 'ugly'],
#   noun:      ['fox', 'dog', 'head', 'leg'],
#   adverb:    ['easily', 'lazily', 'noisily', 'excitedly'],
#   verb:      ['jumps', 'lifts', 'bites', 'licks']
# }

# def output_madlib(text)
#   File.foreach(text) do |line|
#     # binding.pry
#     REPLACEMENT_WORDS.each_pair do |word_type, words|
#       line = line.gsub(/#{word_type.to_s}/, words.sample)
#     end
#     puts line
#   end
# end

# output_madlib('madlibs_alt.txt')