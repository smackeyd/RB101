def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()
  name.empty?() ? prompt("Make sure to use a valid name.") : break
end

prompt("Hi, #{name}!") # prompted here so we do not display to user every time

loop do # MAIN LOOP
  number1 = nil

  loop do
    prompt("Please enter your first number:")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Hm..that is not a valid number. Please try again.")
    end
  end

  number2 = nil
  loop do
    prompt("Please enter your second number:")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hm..that is not a valid number. Please try again.")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
   MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator) # array of strings
      break
    else
      prompt("Please choose 1, 2, 3 or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}!")

  prompt("Would you like to perform another calculation? (Y if yes)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using Calculator!")
