# DOCUMENTATION AGAIN

# 1.

# 2. What will each of the 4 puts statements print?
require 'date'

puts Date.civil # => -4712-01-01
puts Date.civil(2016) # => 2016-01-01
puts Date.civil(2016, 5) # => 2016-05-01
puts Date.civil(2016, 5, 13) # => 2016-05-13

# 3. Use the ruby documentation to determine what this code will print.
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => [4, 5, 3, 6]

# 4.
a = [1, 4, 8, 11, 15, 19]

value = a.bsearch {|x| x > 8 }

value # => 11

# 5. What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7) # IndexError: index 7 outside of array bounds: -5...5
puts a.fetch(7, 'beats me') # beats me (default value since there is no object at index 7)
puts a.fetch(7) { |index| index**2 } # 49 (value returnd by the block)

# 6. What does this code print?
5.step(to: 10, by: 3) { |value| puts value } # => 5, 8

# Wrong guess: 3, 5, 8
# REVIEW: 5.step indicates that iteration starts at 5. Therefore, it puts values from 5 to 10, counting by 3. 

# 7. Look in documentation for methods for Object (parent of String) to find the answer

s = 'abc'
puts s.public_methods(false).inspect

# 8.
a = [5, 9, 3, 11]
puts a.min(2)