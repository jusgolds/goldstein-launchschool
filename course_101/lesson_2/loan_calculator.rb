# Need the following information:
# => the loan amount
# => the APR
# => the loan duration

# Need to calculate the following things:
# => monthly interest rate
# => loan duration in months

# algorithm
# => m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months


# welcome the user and ask for the user's name
# use a loop to confirm that they added a valid name
# welcome the person
# ask the user for the loan amount
# ask the user for the APR
# calculate the monthly interest rate
# ask the user for the loan duration in years
# calculate the number of months
# display the monthly payment

def prompt(message)
  puts("=> #{message}")
end

prompt("Welcome to the loan calculator. Please enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt("Make sure to enter a valid name.")
  else
    break
  end
end

prompt("Welcome #{name}! Let's calculate your monthly payment!")

loop do
  loan_total = ''
  loop do
    prompt("What is the total dollar value of the loan?")
    loan_total = gets.chomp

    if loan_total.empty?() || loan_total.to_f < 0
      prompt("That is not a valid number...")
    else
      break
    end
  end

  apr = ''
  loop do # validity check needs further testing
    prompt("What is the APR %? (Please enter without %)")
    prompt("Example: 3.25% = 3.25")
    apr = gets.chomp

    if apr.empty?() || apr.to_f < 0
      prompt("That is not a valid number...")
    else
      break
    end
  end

  loan_years = ''
  loop do
    prompt("What is the loan length in years?")
    loan_years = gets.chomp

    if loan_years.empty?() || loan_years.to_i < 0
      prompt("That is not a valid number...")
    else
      break
    end
  end

  loan_total = loan_total.to_f
  loan_months = loan_years.to_i * 12
  monthly_interest = (apr.to_f / 100) / 12

  monthly_payment = loan_total * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_months)))

  prompt("---------------------------------------")
  prompt("Justin, your monthly payment is:")
  prompt("$#{format('%02.2f', monthly_payment)}")
  prompt("---------------------------------------")

  prompt("Would you like to find another monthly rate? (Y for Yes)")
  answer = gets.chomp

  break unless answer.downcase == 'y'
end

prompt("Thank you for using the calculator!")
prompt("Good bye, #{name}!")
