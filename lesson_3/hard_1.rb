# PRACTICE PROBLEMS: HARD 1

# 1. What do you expect to happen when the greeting variable is referenced in the last line of the code below?
if false
  greeting = "hello world"
end

greeting

# I expect greeting to be nil and/or for there to be an error. If statements default to truthy so, as written, greeting has not been defined.
# LS: Greeing is nil and there is no error message. 
# Typically, when you reference an uninitialized variable, Ruby will raise an exception, stating that it’s undefined. However, when you initialize a local variable within an if clause, even if that if clause doesn’t get executed, the local variable is initialized to nil.

# 3. What is the result of the last line in the code below?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => { a: 'hi there' }

# I got this WRONG. I thought it would return { a: 'hi' } but it returns { a: 'hi there' }
# Again, this is because << mutates the caller, and the caller in this case is greetings[:a]

# 4.

# A: non-mutating, re-assignment is limited to inside the method
#one is: one
#two is: two
#three is: three

# B: non-mutating, re-assignment is limited to inside the method
#one is: one
#two is: two
#three is: three

# C: mutating, callers are changed
#one is: two
#two is: three
#three is: one

# 4. REVIEW

# first attempt
def dot_separated_ip_address?(input_string)
  dot_separated_nums = input_string.split(".")

  if dot_separated_nums.size == 4
    until dot_separated_nums.empty? do
      num = dot_separated_num.pop
      break unless is_an_ip_number?(num)
      return false
    end
    return true
  else
    return false
end

# LS solution ~ cleaner code than my attempt

def dot_separated_ip_address?(input_string)
  dot_separated_nums = input_string.split(".") # split into an array of "nums"
  return false unless dot_separated_nums.size == 4 # false if wrong # of "nums"

  until dot_separated_nums.empty? do
    num = dot_separated_num.pop
    return false unless is_an_ip_number?(num) # return false unless each is an ip number
  end

  return true
end