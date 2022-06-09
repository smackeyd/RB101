def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

p t 
p s 

p t.object_id
p s.object_id