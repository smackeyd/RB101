require 'pry'

### LS SOLUTION ###
# def egyptian(target_value)
#   denominators = []
#   unit_denominator = 1

#   until target_value == 0
#     unit_fraction = Rational(1, unit_denominator)
#     # binding.pry
#     if unit_fraction <= target_value
#       target_value -= unit_fraction
#       denominators << unit_denominator
#     end

#     unit_denominator += 1
#   end
#   # binding.pry
#   denominators
# end

# def unegyptian(denominators)
#   denominators.inject(Rational(0)) do |accum, denominator|
#     binding.pry
#     accum + Rational(1, denominator)
#   end
# end

### ALT ###
def egyptian(target_value)
  denominators = []
  denom = 1

  until target_value == 0 do
    if target_value - Rational(1, denom) < 0
      denom += 1
    else
      target_value -= Rational(1, denom)
      denominators << denom
      denom += 1
    end
  end

  denominators
end

def unegyptian(denominators)
  denominators.map { |denom| Rational(1, denom) }.sum
end

# p egyptian(Rational(1, 2))
p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)