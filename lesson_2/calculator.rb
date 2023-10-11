# CALCULATOR PROGRAM

# define method to check valid number
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
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
  prompt('Welcome to Calculator! Enter your name:')
  name = gets.chomp
  break unless name.empty?
  prompt('Make sure to enter your name.')
end

prompt("Great! Hi #{name}")

loop do # initialize main loop
  loop do # collect number 1
    prompt('Please enter your first number:')
    num1 = gets.chomp
    break if valid_number?(num1)
    prompt('Invalid input. Only integers are allowed.')
  end

  # collect number 2
  loop do
    prompt('Please enter your second number:')
    num2 = gets.chomp
    break if valid_number?(num2)
    prompt('Invalid input. Only integers are allowed.')
  end

  # collect operation
  op_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(op_prompt)
    loop do
      op = gets.chomp.downcase
      if op == '4' && num2 == '0'
        prompt('You cannot divide by 0. Please select a different operation.')
      elsif %w(1 2 3 4).include?(op)
        break
      else
        prompt('Try again. You must choose 1, 2, 3, or 4.')
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

  prompt("The result is #{result}.")

  prompt("Do you want to preform another calculation? Type 'Y' to calculate again.")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# final goodbye
prompt("Thanks for using the calculator. Bye bye!")
