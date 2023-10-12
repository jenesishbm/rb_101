# ASSIGNMENT: Mortgage / Car Loan Calculator

=begin PSEUDO-CODE
Collect loan amount and verify it's a valid input
Collect Annual Percentage Rate (APR) and verify it's a valid input
Collect loan duration and verify it's a valid input

Calculate monthly interest rate
Calculate loan duration in months
Calculate monthly payment
=end

# define prompt method
def prompt(message)
  puts "=> #{message}"
end

# BONUS: define method to check if input is a valid integer
def integer?(input)
  input.to_i.to_s == input
end

# BONUS: define method to check if input is a valid float (decimal)
def float?(input)
  input.to_f.to_s == input
end

# BONUS: define method to check if input is a valid number (float or integer)
def valid_number?(input)
  ( integer?(input) || float?(input) ) && input.to_f > 0
end

# define variables
loan = nil
apr = nil
years = nil
months = nil
d_months = nil
monthly_i = nil
due_monthly = nil

# welcome
prompt("Welcome to the Loan Calculator!")

loop do
  # collect loan amount and verify
  loop do
    prompt("Please enter the loan amount ($)")
    loan = gets.chomp
    break if valid_number?(loan)
    prompt("Invalid input. Only positive numbers are allowed.")
  end

  # collect apr and verify
  loop do
    prompt("Please enter the Annual Percentage Rate (APR) in %. For example, 10 for 10% or 5 for 5%")
    apr = gets.chomp
    break if valid_number?(apr)
    prompt("Invalid input. Only positive numbers are allowed.")
  end

  # collect loan duration and verify
  loop do
    prompt("Please enter the loan duration in years and months.")
    prompt("Years:")
    years = gets.chomp
    prompt("Months:")
    months = gets.chomp
    break if valid_number?(years) && valid_number?(months)
    prompt("Invalid input. Only positive numbers are allowed for each value.")
  end

  # calculate things and assign to variables
  d_months = (12 * years.to_f) + months.to_f # duration in months
  annual_i = apr.to_f / 100
  monthly_i = annual_i / 12.0 # monthly interest
  due_monthly = loan.to_f *
                (monthly_i / (1 - (1 + monthly_i)**(-d_months)))

  # Print results
  prompt("Here are your results:")
  prompt("Your monthly interest rate is #{monthly_i.truncate(4)}.")
  prompt("Your total loan duration is #{d_months.truncate(2)} months.")
  prompt("Your monthly payment is $#{due_monthly.truncate(2)}.")

  prompt("Another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator. Bye bye!")
