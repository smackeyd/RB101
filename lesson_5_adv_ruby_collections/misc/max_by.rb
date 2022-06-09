num = (1..4).max_by {|element| element }

p num

letter = %w[a b c d].max_by {|element| element.ord }

p letter

set = {foo: 0, bar: 1, baz: 2}.max_by {|key, value| value }

p set 