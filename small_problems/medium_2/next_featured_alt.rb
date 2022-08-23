UPPER_LIMIT = 9_876_543_201 # * See after code for explanation.

# Helper method solution:
# This solution, imho, is easier to arrive at because we
# break down the problem into two parts: checking if a number
# is a featured number and incrementing our number by 14
# until we get the next featured number.
def featured_num?(num)
  num % 7 == 0 && num.odd? && num.digits.uniq == num.digits
end

def featured(number)
  return "There is no possible number that fulfills those requirements." if number >= UPPER_LIMIT

  num = number + 1
  num += 1 until num.odd? && num % 7 == 0

  until featured_num?(num)
    num += 14
  end
  num
end

# More concise solution:
# This solution takes advantage of the fact the built-in
# digits method and modifiers (`until`) to cut down on the number of lines needed.
def featured(number)
  return "There is no possible number that fulfills those requirements." if number >= UPPER_LIMIT

  num = number + 1
  num += 1 until num.odd? && num % 7 == 0

  num += 14 until num.digits == num.digits.uniq
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements