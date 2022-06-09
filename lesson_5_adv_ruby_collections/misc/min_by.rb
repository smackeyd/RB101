num = (1..4).min_by {|element| element }
p num

letter = %w[a b c d].min_by {|element| element.ord }
p letter

set = {foo: 0, bar: 1, baz: 2}.min_by {|key, value| value } 
p set

two = (1..4).min_by(2) {|element| element }
p two 