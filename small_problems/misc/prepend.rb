s = 'foo'

s.prepend('bar', 'baz') # => "barbazfoo"
p s                     # => "barbazfoo"

s.prepend('hi')
p s

