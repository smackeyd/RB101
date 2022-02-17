def prompt(message)
  Kernel.puts("=> #{message} <=")
end

def valid_input?(input)
  input.to_i.to_s == input && input.to_i != 0
end

prompt("Welcome to Mortgage Calculator!")

loop do
  prompt("What is the $ loan amount:")

  loan_amount = nil
  loop do
    loan_amount = Kernel.gets.chomp()

    if valid_input?(loan_amount)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  prompt("What is the monthly interest rate?")
  prompt("Please enter in the percentage amount (ex. enter 5 for 5%)")

  interest_rate = nil
  loop do
    interest_rate = Kernel.gets.chomp()

    if valid_input?(interest_rate)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  prompt("How many years is the loan?")

  loan_duration = nil
  loop do
    loan_duration = Kernel.gets.chomp()

    if valid_input?(loan_duration)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  prompt("Calculating...")

  monthly_int_rate = (interest_rate.to_f / 100) / 12
  months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f() *
                    (monthly_int_rate /
                    (1 - (1 + monthly_int_rate)**(-months)))

  prompt("Your monthly payment is estimated to be #{monthly_payment}.")

  prompt("Would you like to perform another calculation?")
  prompt("Please respond 'yes' or 'no'.")

  answer = Kernel.gets.chomp()
  break unless answer.downcase == "yes"
end

prompt("Thank you for using Mortgage Calculator!")
