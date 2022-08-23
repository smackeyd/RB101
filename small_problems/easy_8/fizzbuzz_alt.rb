# def fizzbuzz(int1, int2)
#   (int1..int2).each_with_object([]) do |num, array|
#     num = 'FizzBuzz' if num % 3 == 0 && num % 5 == 0
#     num = 'Fizz' if num % 3 == 0
#     num = 'Buzz' if num % 5 == 0
#     array << num
#   end
# end

# alternate with 2 methods:

def divisible?(num, *divisors)
  divisors.all? {|divisor| num % divisor == 0}
end

def fizzbuzz(alpha, omega)
  fizzlin_buzzlin_arr = (alpha..omega).map do |num|
    if    divisible?(num, 3, 5)  then "FizzBuzz"
    elsif divisible?(num, 3)     then "Fizz"
    elsif divisible?(num, 5)     then "Buzz"
    else                               num
    end
  end

  puts fizzlin_buzzlin_arr.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz