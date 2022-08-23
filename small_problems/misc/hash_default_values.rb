h = Hash.new
p h.default # => nil

i = Hash.new(-1)
p i.default # => -1

i.default = 0
p i.default # => 0

