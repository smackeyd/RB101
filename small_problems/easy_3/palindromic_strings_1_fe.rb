=begin
Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array.
Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument,
and determines whether that argument is a palindrome. You may not use an if, unless, or case statement or modifier.
=end
# require 'pry'

def palindrome?(item)
  new_item = ''
  reverse_counter = (item.size - 1)
  while reverse_counter >= 0
    # binding.pry
    new_item += item[reverse_counter]
    reverse_counter -= 1
  end

  new_item == item
end

p palindrome?('123431') == false
p palindrome?('12321') == true