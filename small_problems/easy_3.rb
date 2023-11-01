# EASY 3

# 1. Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
nums = []

puts "==> Enter the 1st number:"
num_1 = gets.chomp.to_i # LS solution: nums << gets.chomp.to_i
puts "==> Enter the 2nd number:"
num_2 = gets.chomp.to_i
puts "==> Enter the 3rd number:"
num_3 = gets.chomp.to_i
puts "==> Enter the 4th number:"
num_4 = gets.chomp.to_i
puts "==> Enter the 5th number:"
num_5 = gets.chomp.to_i
puts "==> Enter the 6th number:"
num_6 = gets.chomp.to_i

nums.push(num_1, num_2, num_3, num_4, num_5)

if nums.include?(num_6)
  puts "The number #{num_6} appears in #{nums}."
else
  puts "The number #{num_6} does not appear in #{nums}."
end

# 2. Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

puts "==> Enter the first number:"
first = gets.chomp.to_i
puts "==> Enter the second number:"
second = gets.chomp.to_i

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{first / second}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} power = #{first**second}"

# 3. Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

puts "Please enter a word or multiple words:"
text = gets.chomp
characters = text.gsub(" ","").size # or text.delete(' ').size

puts "There are #{characters} characters in '#{text}'."

# 4. Create a method that takes two arguments, multiplies them together, and returns the result.

def multiply(num1, num2)
  num1 * num2
end

# if the first argument is an array, the array will be printed #num2 times.

# 5. Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def square(num)
  multiply(num, num)
end

# Further Exploration: What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?
def power_to(num, power)
  multiply(num, 1)**power # looked it up: use 1 to get original number to raise to a certain power
end

# 6. write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(arg1, arg2)
  if arg1 == true && arg2 == false
    return true
  elsif arg1 == false && arg2 == true
    return true
  else
    return false
  end
end

# 7.
