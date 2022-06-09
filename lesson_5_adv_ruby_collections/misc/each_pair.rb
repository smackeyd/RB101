# ALIAS FOR .EACH

h = {foo: 0, bar: 1, baz: 2}
h.each_pair {|key, value| puts "#{key}: #{value}"}