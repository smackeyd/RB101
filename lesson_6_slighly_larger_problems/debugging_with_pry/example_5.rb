require "pry"

def my_method(num)
  a = 1
  binding.pry
  b = 2
end

c = 3 # error: outside of scope 

my_method(c)