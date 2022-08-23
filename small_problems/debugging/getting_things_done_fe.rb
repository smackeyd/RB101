# def move(n, from_array, to_array)
#   return if from_array.size == 0 && n >= 1 || n == 0
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

### another one ###
def move(n, from_array, to_array)
  return if from_array.size == 0 && n >= 1 || n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']
move(2, todo, done) # todo => ['coffee with Tom'], done => ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
p todo
p done

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']
move(7, todo, done) # todo => [], done => ["apply sunscreen", "go to the beach", "study", "walk the dog", "coffee with Tom"]
p todo
p done