arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

p arr[0]              # => ["a", ["b"]]
p arr[0][1][0]        # => "b"
p arr[1]              # => { :b => "bear", :c => "cat" }
p arr[1][:b]          # => "bear"
p arr[1][:b][0]       # => "b"
p arr[2][2]           # => "b"