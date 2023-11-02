# EASY 1
####################################### ATTEMPT 1 #################################################

# 1. Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, num)
  num.times { puts string }
end

repeat('Hello', 3)

# 2. Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# if number on the right is positive, modulo will return a positive remainder 
# remainder operators return negative if number on the left is negative
def is_odd?(num)
  num % 2 == 1
end

# If you weren't certain whether % were the modulo or remainder operator
def is_odd_idk?(num)
  (num % 2).abs == 1
end

#  Rewrite #is_odd? to use Integer#remainder instead of %
def is_odd_rem?(num)
  num.remainder(2) != 0
end

puts is_odd?(8)   # => false
puts is_odd?(-17)  # => true

# 3. Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(num)
  string = "1"
  until string.length == num
    if string.end_with?("1")
      string << "0"
    else
      string << "1"
    end
  end
  string
end

# LS solution:
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0 # 1 if index is even (starting at index 0), 0 if index is odd
    numbers << number # add 0 or 1 to numbers array
  end

  numbers.join # flatten array into string
end

puts stringy(9) == '101010101'
puts stringy(4) == '1010'

# 4. Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

def calculate_bonus(salary, tf)
  if tf == true
    return salary/2
  else
    return 0
  end
end

# LS SOLUTION : BETTER : REVIEW TERNARY OPERATORS
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0

# 5. Write a method that will take a short line of text, and print it within a box.

# TRY AGAIN 

# 6. Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# LEFT-ALIGNED
def triangle(n)
  index = 1
  loop do
    puts "#{'*' * (index)}"
    index +=1
    break if index > n
  end
end

triangle(5)
triangle(9)

# RIGHT-ALIGNED
def triangle(n)
  line = 1
  loop do
    puts "#{' ' * (n-line)} #{'*' * (line)}"
    line +=1
    break if line > n
  end
end

triangle(5)
triangle(9)

# 7. Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

puts ">> Enter a noun:"
noun = gets.chomp

puts ">> Enter a verb:"
verb = gets.chomp

puts ">> Enter an adjective:"
adj = gets.chomp

puts ">> Enter an adverb:"
adv = gets.chomp

puts "I can't believe you #{verb} your #{adj} #{noun} #{adv}!"

# 8. Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

# REVIEW. YOU GOT STUCK ON THIS
def reversed_number(n)
  string = n.to_s
  rev = string.reverse
  rev.to_i
end

# OR
def reversed_number(num)
  num.to_s.reverse.to_i
end

# STEPS to map out before solving:
# Convert the number to a string (Integer#to_s). 
# Reverse the string (String#reverse). 
# Convert the result to a number (String#to_i).

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 65

# 9. Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

def center_of(string)
  mid = string.length / 2
  string.length.odd? ? string[mid] : string[mid -1] + string[mid]
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

####################################### ATTEMPT 2 #################################################
