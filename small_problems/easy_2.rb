# EASY 2

=begin
TO REVIEW: 
* yaml files for code
* alternative formatting (i.e. #{format("$%.2f", tip)} for # 3)
*
=end

# 1. Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

age = rand(20..200)
puts "Teddy is #{age} years old!"

# further exploration
puts "What is your name?"
name = gets.chomp
name = "Teddy" if name.empty?
age = rand(20..200)
puts "#{name.capitalize} is #{age} years old!"

# 2. Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
SQMETERS_TO_SQFEET = 10.7639 # good practice to set as constant

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_m = (length * width).round(2)
area_ft = (area_m * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_m} square meters (#{area_ft} square feet)."

# further exploration: Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTS = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area_ft = (length * width).round(2)
area_in = (area_ft * SQFEET_TO_SQINCHES).round(2)
area_cm = (area_ft * SQFEET_TO_SQCENTS).round(2)

puts "The area of the room is #{area_ft} square feet."
puts "This is #{area_in} square inches and #{area_cm} square centimeters."

# 3. Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_p = gets.chomp.to_f / 100

tip_amount = (bill * tip_p).round(2)
total = (bill + tip_amount).round(2)

puts "The tip is $#{tip_amount}"
puts "The total with tip is $#{total}"

# 4. Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_left = retire_age - current_age
current_year = Time.now.year # looked up
retire_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{years_left} years to go!"

# 5. Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

puts "What is your name?"
name = gets.chomp

if name.end_with?("!") # or if name[-1] == '!'
  name = name.chop # removes last character, from solution
  puts "HELLO #{name.upcase}. WHY ARE WE YELLING?"
else
  puts "Hello #{name}."
end

# 6. Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
for i in (1..99) do
  puts i if i.odd?
end

# 7. Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

for i in (1..99) do
  puts i if i.even?
end

#or

(1..99).each { |n| puts n if n.even? }

# 8. Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

puts "Please enter an integer greater than 0."
num = gets.chomp.to_i

puts "Enter 's' to compute the sum or 'p' to compute the product."
choice = gets.chomp

if choice.downcase == "s"
  sum = (1..num).inject(:+) # or (1..num).sum - had to look up inject
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif choice.downcase == "p"
  product = (1..num).inject(:*) # had to look up
  puts "The product of the integers between 1 and #{num} is #{product}."
else
  puts "Invalid choice. Please start over and enter 's' to sum or 'p' to multiply."
end

# LS: with methods and input validation
def compute_sum(num)
  total = 0
  1.upto(num) { |value| total += value }
  total
  # or just use (1..num).inject(:+)
end

def compute_product(num)
  total = 1
  1.upto(num) { |value| total *= value }
  total
  # or just use (1..num).inject(:*)
end

loop do
  puts "Please enter an integer greater than 0."
  num = gets.chomp.to_i
  break if num > 0
  puts "Try again. Integer must be greater than 0."
end

loop do
  puts "Enter 's' to compute the sum or 'p' to compute the product."
  choice = gets.chomp.downcase
  break if choice == "s" || choice == "p"
  puts "Invalid choice. Please enter 's' to sum or 'p' to multiply."
end

if choice.downcase == "s"
  sum = compute_sum(num)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
else
  product = compute_product(num)
  puts "The product of the integers between 1 and #{num} is #{product}."
end

# simple solution from someone on LS board. Though might not be ideal because methods are best if they do one thing only.
def calculation
  puts ">> Please enter an integer greater than 0:"
  int = gets.chomp.to_i
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase

  product = (1..int).inject(:*)
  sum = (1..int).sum

  puts "The sum of the integers between 1 and #{int} is #{sum}." if operation == 's'
  puts "The product of the integers between 1 and #{int} is #{product}." if operation == 'p'
end

calculation

# 9. BOB & BOB because .upcase! mutates the caller.

# 10. Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

def negative(num)
  num > 0 ? -num : num # use ternary operators when there are only 2 choices
end