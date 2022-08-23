def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

p s
p t

p t.object_id
p s.object_id

=begin
In this modified code, we assign the return value of value.upcase back to value.
Unlike #upcase!, #upcase doesn't mutate the String referenced by value; instead,
it creates a new copy of the String referenced by value, mutates the new copy,
and then returns a reference to the copy. We then bind value to the returned reference.

s and t now reference different objects,
and the String referenced by s still references its original value.
=end