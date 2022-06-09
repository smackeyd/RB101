def all?
  { a: "ant", b: "bear", c: "cat" }.all? do |key, value|
    value.length >= 3
  end
end

p all? 