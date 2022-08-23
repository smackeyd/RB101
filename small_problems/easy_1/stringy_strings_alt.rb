=begin
Modify stringy so it takes an additional optional argument that defaults to 1.
If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.
=end
def stringy(size, first_digit = 1)
  numbers = []

  size.times do |index|
    if first_digit == 1
      number = index.even? ? first_digit : 0
    else
      number = index.even? ? first_digit : 1
    end
    numbers << number
  end

  numbers.join
end

p stringy(5) # => "10101"
p stringy(5, 0) # => "01010"

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
