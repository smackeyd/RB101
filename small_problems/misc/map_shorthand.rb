p ["2", "3"].map(&:to_i) # => [2, 3]

p ["2", "3"].map { |element| element.to_i }

23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5