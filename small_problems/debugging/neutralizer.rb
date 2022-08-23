require 'pry'

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.reject! { |word| negative?(word) } # change made here. While iterating over an array, avoid mutating it from within the block.
#   words.join(' ')
# end

### ALT ###
def neutralize(sentence)
  words = sentence.split(' ')
  words.delete_if do |word|
    negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')