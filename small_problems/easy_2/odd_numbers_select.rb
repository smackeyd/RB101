# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

numbers = Range.new(1, 99).to_a

odd_numbers = numbers.select do |num|
  num.odd?
end

puts odd_numbers