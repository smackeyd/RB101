[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2| # each returns the calling object.
    element2.partition do |element3|
      element3.size > 0
    end
  end
end