# When called on a hash, include? only checks the keys, not the values.

# { a: "ant", b: "bear", c: "cat" }.include?("ant")
# # => false

# { a: "ant", b: "bear", c: "cat" }.include?(:a)
# # => true

{ a: "ant", b: "bear", c: "cat" }.key?(:a)
{ a: "ant", b: "bear", c: "cat" }.value?("ant") 
