# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(integer)
  array_of_digits = []
  integer.inspect.each_char do |digit|
    array_of_digits << digit.to_i
  end
  array_of_digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=begin
Our goal is to convert a number to a list of its digits. 
First, we convert the number to a string, then split it into an array of numeric characters. 
This array is almost what we want, but we need an array of numbers, not an array of strings.
=end