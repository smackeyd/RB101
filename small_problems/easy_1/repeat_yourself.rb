 # Write a method that takes two arguments, a string and a positive integer,
 # and prints the string as many times as the integer indicates.

def repeat(string, num)
  num.times { |i| puts string }
end

repeat('Hello', 9)

# We started out by defining repeat with two parameters.

=begin
Using this method, we can execute puts string any number of times.
In this case, we want to print string the number of times indicated by number.
=end