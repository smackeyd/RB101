# def greetings(name, status)
#   "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
# end

# alt
def greetings(array, hash)
  name = array.join(' ')
  title = "#{hash[:title]} #{hash[:occupation]}"
  "=> Hello, #{name}! Nice to have a #{title} around."
end

# another one
# def greetings(arr, hsh)
#   name = arr.join(' ')
#   professional = hsh.values.join(' ')
#   "=> Hello, #{name}! Nice to have a #{professional} around."
# end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.