def multiply(num1, num2)
  num1 * num2
end

def power(base, expo)
  num = 1
  expo.times { num = multiply(base, num) }
  num
end

p power(2, 5)

