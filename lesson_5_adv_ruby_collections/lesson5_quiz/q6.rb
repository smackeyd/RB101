a = 'hi'
english_greetings = ['hello', a, 'good morning']

# p a == english_greetings[1]

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'

# p english_greetings
# p a
# p a == english_greetings[1] # they are now different

greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]

puts greetings

=begin
D. greetings[:english][1] = 'hey' reassigns the reference at index 1 of the english_greetings array to the string hey,
but a is still pointing the string hi.

The call to each within the block and upcase! mutates the strings in all of the sub-arrays to their upcased versions.
=end