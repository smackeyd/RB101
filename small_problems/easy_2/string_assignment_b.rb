name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
Does this result surprise you? It might, but it shouldn't.
Because assignment in ruby just assigns a REFERENCE to a variable, both name and save_name REFER TO THE SAME string, Bob.
When you apply name.upcase!, which mutates name in place, the VALUE that save_name REFERENCES also changes.
Thus, both name and save_name are set equal to 'BOB'.
=end