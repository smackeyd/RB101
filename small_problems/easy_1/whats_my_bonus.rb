def calculate_bonus(amount, boolean)
  bonus = 0
  boolean ? bonus = amount / 2 : bonus 
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000