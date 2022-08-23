require 'pry'
def word_sizes(string)
  count_hash = {}
  sizes_array = string.split.map do |word|
    word.gsub(/[^a-zA-Z]/, '').length
  end
  # binding.pry
  sizes_array.each do |size|
    if count_hash.has_key?(size)
      next
    else
      count_hash[size] = sizes_array.count(size)
    end
  end

  count_hash.sort.to_h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}