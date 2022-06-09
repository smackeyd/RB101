p (1..4).max(2)   
p (-4..-1).max(2) 

p %w[d c b a].max(2)
p %w[a b c d].max(2) # same as below 

{foo: 0, bar: 1, baz: 2}.max # => [:foo, 0]

max =  {foo: 0, bar: 1, baz: 2}.max(2) # => [[:foo, 0], [:baz, 2]]
p max