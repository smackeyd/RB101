def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

p s
p t 

=begin
This program mutates the original string so its value is helloxyz.
However, thanks to the assignment on line 3, it is not mutated to HELLOXYZ or HELLOXYZ!; 
those mutations are made to the (different) object that the method returns.
=end 