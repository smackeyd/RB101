require 'pry'

# def sum(n)
#   return 1 if n == 1
#   # binding.pry
#   n + sum(n - 1)
# end

# p sum(5)
# p sum(6)

### FACTORIAL ###
def factorial(n)
  if n == 1
    1
  else
    n * factorial(n - 1)
  end
end

p factorial(5)