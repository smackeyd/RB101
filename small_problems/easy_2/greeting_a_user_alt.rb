print 'What is your name? '
name = gets.chomp

if name[-1] == '!' # this line different 
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

=begin
Note that this solution uses both String#chomp and String#chop. 
These two methods are closely related, but slightly different: 
#chomp conditionally removes the tail end of a string (defaulting to a newline), 
while #chop removes the last character unconditionally. 
Both versions also have ! versions that modify the string directly; we could have used these here, 
but decided not to because the use of the ! in both the method name and the string might be mildly confusing.
=end