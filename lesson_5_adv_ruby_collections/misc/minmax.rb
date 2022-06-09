p (1..4).minmax                   # => [1, 4]
p (-4..-1).minmax                 # => [-4, -1]
p %w[d c b a].minmax              # => ["a", "d"]

minmax = {foo: 0, bar: 1, baz: 2}.minmax # => [[:bar, 1], [:foo, 0]]
p minmax  

p %w[xxx x xxxx xx].minmax {|a, b| a.size <=> b.size } # => ["x", "xxxx"]

h = {foo: 0, bar: 1, baz: 2}
p h.minmax {|pair1, pair2| pair1[1] <=> pair2[1] } # => [[:foo, 0], [:baz, 2]]