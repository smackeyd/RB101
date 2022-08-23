def multiply(num1, num2)
  num1 * num2
end

def exponents(i, expo)
  num = 1
  counter = 0
  loop do
    num = multiply(num, i)
    counter += 1
    break if counter >= expo
  end
  num
end

p exponents(2, 4) == 16 # true
p exponents(-4, 3) == -64 # true