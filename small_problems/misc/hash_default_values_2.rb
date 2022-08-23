counts = {foo: 42}
p counts
p counts.default # => nil (default)

p counts[:bar] # => nil
p counts.default = 0
p counts[:bar] # => 0
p counts.values_at(:foo, :bar, :baz) # => [42, 0, 0]
p counts.dig(:bar) # => 0
