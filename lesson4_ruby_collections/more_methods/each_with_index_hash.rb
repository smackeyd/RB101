# When calling each_with_index on a hash, the first argument now represents an ARRAY containing both the key and the value.

{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index| # pair == key AND value in an ARRAY
  puts "The index of #{pair} is #{index}."
end

# The index of [:a, "ant"] is 0.
# The index of [:b, "bear"] is 1.
# The index of [:c, "cat"] is 2.
# => { :a => "ant", :b => "bear", :c => "cat" }