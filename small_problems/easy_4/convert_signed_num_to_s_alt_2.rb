require 'pry'

MAIN = ('0'..'9').to_a.zip(0..9)

def signed_integer_to_string(integer)
  return '0' if integer == 0
  main_num = integer.abs.digits.reverse

  main_num.map do |num|
    num = MAIN[num]
  end

  main_num = main_num.join
  integer.abs == integer ? main_num = '+' + main_num : main_num = '-' + main_num
  main_num
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'