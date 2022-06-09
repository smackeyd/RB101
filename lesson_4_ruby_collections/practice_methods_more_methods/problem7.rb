[1, 2, 3].any? do |num|
  puts num # => 1
  num.odd?
end

# => true, stops after first iteration 