def fix(value)
  puts "initial object #{value.object_id}"
  value = value.upcase
  puts "upcased object #{value.object_id}"
  value.concat('!')
end

s = 'hello'
puts "original object #{s.object_id}"

t = fix(s)
puts "final object #{t.object_id}"

p s
p t

=begin
This shows that value = value.upcase bound the return value of value.upcase to value; 
value now references a different object than it did before. Prior to the assignment, 
value referenced the same String as referenced by s, but after the assignment, 
value references a completely new String; the String referenced by #upcase's return value.

https://miro.medium.com/max/1400/0*Mofi589HU0ji1eqr.png
=end