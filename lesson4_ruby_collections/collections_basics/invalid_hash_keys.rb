hsh = { :a => 1, 'b' => 'two', :c => nil }

p hsh['b']       # => "two", VALID
p hsh[:c]        # => nil, VALID 
p hsh['c']       # => nil, INVALID
p hsh[:d]        # => nil, INVALID 

p hsh.fetch(:c)  # => nil
p hsh.fetch('c') # => KeyError: key not found: "c"
               #        from (irb):2:in `fetch'
               #        from (irb):2
               #        from /usr/bin/irb:11:in `<main>'
p hsh.fetch(:d)  # => KeyError: key not found: :d
               #        from (irb):3:in `fetch'
               #        from (irb):3
               #        from /usr/bin/irb:11:in `<main>'