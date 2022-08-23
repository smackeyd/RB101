def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

=begin
["2", "3"].map(&:to_i) # => [2, 3]
same as
["2", "3"].map { |element| element.to_i } # => [2, 3]

23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5
=end