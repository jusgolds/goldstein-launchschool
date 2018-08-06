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

def valid_number?(num)
  num.to_i.to_s == num
end

def number?(num)
  num.to_f.to_s == num
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

loan_total = ''
loop do
  prompt("What is the total dollar value of the loan?")
  loan_total = gets.chomp

  if valid_number?(loan_total)
    break
  elsif number?(loan_total)
    break
  else
    prompt("That is not a valid number...")
  end
end

apr = ''
loop do # validity check needs further testing
  prompt("What is the APR %? (Please enter without %)")
  prompt("Example: 3.25% = 3.25")
  apr = gets.chomp

  if valid_number?(apr)
    break
  elsif number?(apr)
    break
  else
    prompt("That is not a valid number...")
  end
end

loan_years = ''
loop do
  prompt("What is the loan length in years?")
  loan_years = gets.chomp

  if valid_number?(loan_years)
    break
  elsif number?(loan_years)
    break
  else
    prompt("That is not a valid number...")
  end
end

loan_total = loan_total.to_f
loan_months = loan_years.to_i * 12
monthly_interest = (apr.to_f / 100) / 12

monthly_payment = loan_total * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_months)))
monthly_payment = monthly_payment.round(2)

prompt("---------------------------------------")
prompt("Justin, below is your loan's information:")
prompt("Loan Total = $#{loan_total.round(2)}")
prompt("APR = #{apr}%")
prompt("Monthly Interest = #{monthly_interest.round(4)}%")
prompt("Loan Length = #{loan_months} months")
prompt("Monthly Payment = $#{monthly_payment}")
