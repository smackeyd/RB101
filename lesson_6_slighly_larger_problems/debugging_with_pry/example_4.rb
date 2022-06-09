require "pry"

a = 1
b = 2
binding.pry
c = 3 # c will return nil  

# the binding has access to variables that are in its scopes in lines below it, but DOES NOT have access to the variable assignments