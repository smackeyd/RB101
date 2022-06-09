a = [:foo, 'bar', 2]
a1 = [:baz, nil, :bam, nil]
a2 = a.append(*a1).compact 

p a2 # => [:foo, "bar", 2, :baz, :bam]

# Array#append is an alias for Array#push.