# Even if the collection is a hash, the return value of partition will always be an ARRAY.

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]

p long.to_h # => { :b => "bear" }
p short.to_h  # => { :a => "ant", :c => "cat" }

