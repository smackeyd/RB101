=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz",
if a number is divisible by 5, print "Buzz",
and finally if a number is divisible by 3 and 5, print "FizzBuzz".
=end
require 'pry-byebug'

def fizzbuzz_convert(num)
  case
  when num % 3 == 0 && num % 5 == 0 then 'FizzBuzz'
  when num % 3 == 0 then 'Fizz'
  when num % 5 == 0 then 'Buzz'
  else
    num
  end
end

def fizzbuzz(num1, num2)
  updated = []

  (num1..num2).each do |num|
    updated << fizzbuzz_convert(num)
  end

  puts updated.join(', ')
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=begin
This case statement doesn't have a value next to case for comparison.
When using a case statement in this form, we get the same functionality as if we used an if/elsif/else conditional.

Another thing of interest is that there isn't anything other than that case statement in fizzbuzz_value method.
This works because a case statement returns the value from the last line of the matched when branch.
For example, if a number is divisible only by 3, then 'Fizz' is returned from the case statement.
That return value then acts as the return value for the method, since there are no other lines after this case statement.
=end