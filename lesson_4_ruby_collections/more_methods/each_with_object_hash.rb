{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  p array << pair.last
end
# => ["ant", "bear", "cat"]