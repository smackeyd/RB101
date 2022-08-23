def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# The explicit false return isn't actually necessary since return true if value2 && !value1 returns nil if the condition is falsey.
# However, methods whose name ends in a ? should usually only return the explicit true and false values.