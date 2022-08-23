# with no argument
p %w[a b c b c a c b].tally # => {"a"=>2, "b"=>3, "c"=>3}

hash = {}
hash = %w[a c d b c a].tally
p hash # => {"a"=>2, "c"=>2, "d"=>1, "b"=>1}
