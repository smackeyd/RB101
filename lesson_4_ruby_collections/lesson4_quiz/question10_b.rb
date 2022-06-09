def some_method(words)
  arr = []
  counter = 0

  loop do
    word = words[counter]
    arr << word if word.size < 4
    counter += 1
    break if counter == words.size
  end

  arr
end

poem = %w(April is the cruelest month)
p some_method(poem)