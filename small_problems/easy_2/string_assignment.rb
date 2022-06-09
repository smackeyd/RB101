# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
Does this result surprise you? It might, but it shouldn't. 
Because assignment in ruby just assigns a reference to a variable, both name and save_name refer to the same string, Bob. 
When you apply name.upcase!, which mutates name in place, the value that save_name references also changes. 
Thus, both name and save_name are set equal to 'BOB'.
=end