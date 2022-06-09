a = 'hi'
english_greetings = ['hello', a, 'good morning']

p a == english_greetings[1]

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'

p english_greetings
p a
p a == english_greetings[1] # they are now different 

greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]