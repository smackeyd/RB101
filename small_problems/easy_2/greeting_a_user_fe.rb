# Try modifying our solution to use String#chomp! and String#chop!, respectively.

print 'What is your name? '
name = gets
name = name.chomp!

if name[-1] == '!' # this line different 
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end


