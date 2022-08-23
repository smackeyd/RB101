=begin
Using the multiply method from the "Multiplying Two Numbers" problem,
write a method that computes the square of its argument (the square is the result of multiplying a number by itself).
=end

def multiply(num1, num2)
  num1 * num2
end

def square(num) # Our square method is implicitly returning the return value from multiply(n, n)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

product = multiply(3, 2)
p square(product)

