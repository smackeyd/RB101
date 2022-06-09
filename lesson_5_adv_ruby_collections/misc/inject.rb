p (1..4).inject(:+)     # => 10
p (1...4).inject(:+)     # => 6

p (1..4).inject {|sum, n| sum + n*n }    # => 30
p (1..4).inject(2) {|sum, n| sum + n*n } # => 32

p ('a'..'d').inject(:+)            # => "abcd"

p (1..4).inject(:*)     # => 24

