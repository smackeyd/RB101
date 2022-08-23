100.times { |num| puts num if num.odd? }
100.times { |num| puts num if num.even? unless (num < 1 || num > 99) }