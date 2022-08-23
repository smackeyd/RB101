def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

=begin
The main goal of this problem is to count the number of words of each size. To do that, we first need to obtain a list of the words.
Once we have a word, computing its size is easy, but incrementing the count for words of that size is slightly trickier. If we initialize counts as
counts = {}
we will get an exception the first time counts[word.size] += 1 is executed.
This is because that element doesn't exist, so counts[word.size] returns nil, and nil cannot be added to 1.
To fix this, we use the default value form of initializing counts:
counts = Hash.new(0)
This forces any references to non-existing keys in counts to return 0.
=end