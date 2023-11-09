# EASY 3

####################################### ATTEMPT 1 #################################################
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
  return true if arg1 && !arg2
  return true if !arg1 && arg2
  false
end

# 7. Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.
def string_palindrome?(string)
  string == string.reverse
end

# further exploration: write a method that determines whether an array is palindromic;
def array_palindrome?(array)
  array == array.reverse
end

# further exploration: write a method that determines whether an array or a string is palindromic
def palindrome?(input)
  input == input.reverse
end

# 8. Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9') #removes anything that's not 0-9 or a-z ( ^a-z0-9 )
  palindrome?(str)
end

# 9. 
def palindromic_number?(num)
  palindrome?(num.to_s) # can't call reverse on an integer
end

# 10. Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.
def uppercase?(str)
  str = str.delete('^a-zA-Z') # this line is not necessary since .upcase doesn't affect numbers
  str == str.upcase
end

####################################### ATTEMPT 2 #################################################

# 1.
arr = []
iteration = %w(1st 2nd 3rd 4th 5th)

until iteration.empty?
  puts "==> Enter the #{iteration.shift} number:"
  num = gets.chomp.to_i
  arr << num
end

puts "==> Enter the last number:"
last = gets.chomp.to_i

def result(array, num)
  array.include?(num) ? "The number #{num} appears in #{array}." : "The number #{num} does NOT appear in #{array}."
end

puts result(arr, last)

# 2.

puts "==> Enter the first number:"
first = gets.chomp.to_i

puts "==> Enter the second number:"
second = gets.chomp.to_i

puts <<-MSG
#{first} + #{second} = #{first + second}
#{first} - #{second} = #{first - second}
#{first} * #{second} = #{first * second}
#{first} / #{second} = #{first / second}
#{first} % #{second} = #{first % second}
#{first} ** #{second} = #{first ** second}
MSG

# 3.
puts "Please write word or multiple words:"
input = gets.chomp

input_no_spaces = input.delete(" ")

puts "There are #{input_no_spaces.size} characters in '#{input}'."

# 4.
def multiply(n1, n2)
  n1 * n2
end

multiply(5, 3) == 15

# 5. 
def square(n)
  multiply(n, n)
end

# further exploration
def power_to_the_n(base, power)
  multiply(base, 1) ** power
end

# 6. 
def xor?(op1, op2)
  return true if op1 && !op2 # need explicit return to work
  return true if !op1 && op2 # otherwise it will always return false
  false
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# 7.
def palindrome?(str)
  str == str.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)

# 8. REVIEW ('^a-z0-9')
def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9') #removes case sensitivity and deletes anything that's not (^) 0-9 or a-z ( ^a-z0-9 )
  palindrome?(str)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# 9. 
def palindromic_number?(num)
  palindrome?(num.to_s)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(5) == true

# 10.
def uppercase?(str)
  str == str.upcase
end
