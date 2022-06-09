arr = [3, 'd', nil]

p arr[2] # => nil
p arr[3] # => nil

p arr.fetch(2) # => nil
p arr.fetch(3) # => IndexError: index 3 outside of array bounds: -3...3
             #        from (irb):3:in `fetch'
             #        from (irb):3
             #        from /usr/bin/irb:11:in `<main>'