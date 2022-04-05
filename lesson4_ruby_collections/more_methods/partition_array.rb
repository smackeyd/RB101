[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]