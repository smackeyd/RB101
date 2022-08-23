require 'pry'
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  digits.inject(0) { |sum, n| sum * 10 + n }
end

def string_to_signed_integer(string)
  num_str = ['-', '+'].include?(string[0]) ? string[1..-1] : string
  value = string_to_integer(num_str)
  return value * -1 if string[0] == '-'
  value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100