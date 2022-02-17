# ask the user for 2 numbers
# ask the user for type of operation: + - * or / 
# perform the operation on the 2 numbers
# output the result 

Kernel.puts("Welcome to Calculator!")

Kernel.puts("Please enter your first number:")
number1 = Kernel.gets().chomp()

Kernel.puts("Please enter your second number:")
number2 = Kernel.gets().chomp()

Kernel.puts("Which operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == "1" 
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f() # float division
end 

Kernel.puts("The result is #{result}!")