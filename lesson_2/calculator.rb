=begin CALCULATOR PROGRAM
Build a command line calculator program that does the following:

asks for two numbers
asks for the type of operation to perform: add, subtract, multiply or divide
displays the result
=end

# define method to check valid number
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

# define variables outside of loops
op = nil
num1 = nil
num2 = nil

# collect number 1
loop do
  puts ">>Please enter your first number:"
  num1 = gets.chomp
  break if valid_number?(num1)
  puts "Invalid input. Only integers are allowed."
end

# collect number 2
loop do
  puts ">>Please enter your second number:"
  num2 = gets.chomp
  break if valid_number?(num2)
  puts "Invalid input. Only integers are allowed."
end

# collect operation
loop do
  puts ">> What type of operation would you like to perform?"
  puts "Type 'a' to add, 's' to subtract, 'm' to multiply or 'd' to divide."
  op = gets.chomp.downcase
    if op == "d" && num2 == "0"
      puts "You cannot divide by 0. Please select a different operation."
    elsif ["a", "s", "m", "d"].include?(op)
      break
    else
    puts "Try again. Your answer was not a valid operation."
  end
end

# print corresponding output
case op
  when "a"
    puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
  when "s"
    puts "#{num1} - #{num2} = #{num1.to_i - num2.to_i}"
  when "m"
    puts "#{num1} x #{num2} = #{num1.to_i * num2.to_i}"
  else
    puts "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
end