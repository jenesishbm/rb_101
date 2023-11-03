# CALCULATOR PROGRAM

# require "pry" # add this to use Pry
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# method to select correct message
def messages(message, lang='en')
  MESSAGES[lang][message]
end

LANGUAGE = 'en' # change to 'es' for spanish

# BONUS: define method to check if input is a valid integer
def integer?(input)
  input.to_i.to_s == input # checks if input can be converted to an integer without losing any information
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
  prompt(messages('welcome', LANGUAGE))
  name = gets.chomp
  break unless name.empty?
  prompt(messages('valid_name', LANGUAGE))
end

prompt("Great! Hi #{name}")

loop do # initialize main loop
  loop do # collect number 1
    prompt(messages('first_num', LANGUAGE))
    num1 = gets.chomp
    break if integer?(num1)
    prompt(messages('num_error', LANGUAGE))
  end

  # collect number 2
  loop do
    prompt(messages('sec_num', LANGUAGE))
    num2 = gets.chomp
    break if integer?(num2)
    prompt(messages('num_error', LANGUAGE))
  end

  # collect operation

  prompt(messages('operation', LANGUAGE))
  loop do
    op = gets.chomp.downcase
    if op == '4' && num2 == '0'
      prompt(messages('zero_error', LANGUAGE))
    elsif %w(1 2 3 4).include?(op)
      break
    else
      prompt(messages('op_error', LANGUAGE))
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

  # binding.pry # execution will stop here

  # print result
  prompt("The result is #{result}") # need to fix this for spanish

  prompt(messages('again', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# final goodbye
prompt(messages('bye', LANGUAGE))