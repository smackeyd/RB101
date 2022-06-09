array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

p array2
p array1

=begin
Wait a minute! We changed Curly to CURLY, Shemp to SHEMP, and Chico to CHICO in array1. 
How'd those changes end up in array2 as well?

The answer lies in the fact that the first each loop simply copies a bunch of references from array1 to array2. 
When that first loop completes, both arrays not only contain the same values, they contain the same String objects. 
If you modify one of those Strings, that modification will show up in both Arrays.
=end 