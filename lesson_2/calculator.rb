# CALCULATOR PROGRAM

# require "pry" # add this to use Pry
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

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
  integer?(input) || float?(input)
end

# define prompt method to display prompts
def prompt(message)
  puts "=> #{message}"
end

# define method to convert operator to message
def op_to_message(op)
  case op
  when '1' then "Adding"
  when '2' then "Subtracting"
  when '3' then "Multiplying"
  when '4' then "Dividing"
  end
end

# define variables outside of loops
name = nil
num1 = nil
num2 = nil
op = nil
result = nil

# get name
loop do
  prompt(MESSAGES['welcome'])
  name = gets.chomp
  break unless name.empty?
  prompt(MESSAGES['valid_name'])
end

prompt("Great! Hi #{name}")

loop do # initialize main loop
  loop do # collect number 1
    prompt(MESSAGES['first_num'])
    num1 = gets.chomp
    break if integer?(num1)
    prompt(MESSAGES['num_error'])
  end

  # collect number 2
  loop do
    prompt(MESSAGES['sec_num'])
    num2 = gets.chomp
    break if integer?(num2)
    prompt(MESSAGES['num_error'])
  end

  # collect operation

  prompt(MESSAGES['operation'])
  loop do
    op = gets.chomp.downcase
    if op == '4' && num2 == '0'
      prompt(MESSAGES['zero_error'])
    elsif %w(1 2 3 4).include?(op)
      break
    else
      prompt(MESSAGES['op_error'])
    end
  end

  prompt("#{op_to_message(op)} #{num1} and #{num2}...")

  # calculates corresponding output
  result = 
  case op
  when '1'
    num1.to_i + num2.to_i
  when '2'
    num1.to_i - num2.to_i
  when '3'
    num1.to_i * num2.to_i
  else
    num1.to_f / num2.to_f
  end

  # print result
  # binding.pry # execution will stop here
  prompt("The result is #{result}.")

  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# final goodbye
prompt(MESSAGES['bye'])


################################## ATTEMPT 2 ##########################################

=begin PEDAC
  1) ask user for number 1
    -validate input
  2) ask user for number 2
    -validate input
  3) ask user for operation
    -validate input
  4) preform the operation with the two numbers
  5) return the result
=end

# prints message with => in front to indicate prompt
def prompt(message)
  puts "=> #{message}"
end

# validates that input is a valid integer. some loopholes but good enough for now.
def integer?(num)
  num.to_i != 0
end

# returns appropriate method for each operation
def op_to_message(op)
  case op
  when 1
    "Adding"
  when 2
    "Subtracting"
  when 3
    "Multiplying"
  when 4
    "Dividing"
  end
end

#  initialize variables outside of loop
name = nil
num1 = nil
num2 = nil
op = nil
result = nil

prompt("Welcome to the calculator!")

loop do
  prompt("What is your name?")
  name = gets.chomp
  break unless name.empty?
end

prompt("Hi #{name}!")

loop do # main loop
  loop do
    prompt("What is the first number?")
    num1 = gets.chomp.to_i
    break if integer?(num1)
    prompt("Try again. Invalid integer.")
  end

  loop do
    prompt("What is the second number?")
    num2 = gets.chomp.to_i
    break if integer?(num2)
    prompt("Try again. Invalid integer.")
  end

  op_prompt = <<-MSG # MSG is a placeholder, can be anything as long as it matches at the beginning and the end
    What operation would you like to preform?
    1) add 
    2) subtract 
    3) multiply 
    4) division
  MSG

  loop do
    prompt(op_prompt)
    op = gets.chomp.to_i
    break if [1,2,3,4].include?(op)
    prompt("Try again. You must enter 1, 2, 3, or 4.")
  end

  case op
  when 1
    result = "#{num1} + #{num2} = #{num1 + num2}"
  when 2
    result = "#{num1} - #{num2} = #{num1 - num2}"
  when 3
    result = "#{num1} * #{num2} = #{num1 * num2}"
  when 4
    result = "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
  end

  prompt("#{op_to_message(op)} the two numbers...")

  prompt(result)

  prompt("Do you want to go again? Type 'y' or 'n'")
  again = gets.chomp.downcase
  break unless again == "y"
end # end main loop

prompt("Thank you for using the calculator!")