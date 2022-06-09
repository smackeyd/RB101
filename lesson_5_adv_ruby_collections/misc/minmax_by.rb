p (1..4).minmax_by {|element| element }
p (1..4).minmax_by {|element| -element }

p %w[a b c d].minmax_by {|element| element.ord }
p %w[a b c d].minmax_by {|element| -element.ord }

minmax = {foo: 0, bar: 1, baz: 2}.minmax_by {|key, value| value }
p minmax