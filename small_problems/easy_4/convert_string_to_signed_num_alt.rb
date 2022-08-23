require 'pry'
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  digits.inject(0) { |sum, n| sum * 10 + n }
end

def split_num_str(str)
  signed = ['+', '-'].include?(str[0])
  return ['+', str] unless signed

  if signed && str.start_with?('-')
    return ['-', str.slice(1..-1)]
  else
    return ['+', str.slice(1..-1)]
  end
end

def string_to_signed_integer(str)
  sign, num_str = split_num_str(str)
  num = string_to_integer(num_str)
  sign == '-' ? -num : num
end

p split_num_str('4321')
p split_num_str('-570')
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
