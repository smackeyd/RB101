p (1..4).min                   # => 1
p (-4..-1).min                 # => -4
p %w[d c b a].min              # => "a"

min = {foo: 0, bar: 1, baz: 2}.min # => [:bar, 1]
p min

p (1..4).min(2)                   # => [1, 2]
p (-4..-1).min(2)                 # => [-4, -3]