{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
# => false