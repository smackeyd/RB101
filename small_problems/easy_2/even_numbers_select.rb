numbers = Range.new(1, 99).to_a

even_numbers = numbers.select do |num|
  num.even?
end

puts even_numbers