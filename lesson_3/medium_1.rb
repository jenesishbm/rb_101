# PRACTICE PROBLEMS: MEDIUM 1

# 1. For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:
10.times { |number| puts (" " * number) + "The Flinstones Rock!"}
# review

# 2. The result of the following statement will be an error. Why is this and what are two possible ways to fix this?
puts "the value of 40 + 2 is #{(40 + 2)}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# 3. 

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

factors(0)

# What is the purpose of the number % divisor == 0 ?
# To only add integers that are factors of our number. If there is no remainder after division, it's a factor.

# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# To ensure the return value of our method is our final array

# 4. See website

# 5. What's wrong with this code?

limit = 15

def fib(first_num, second_num, limit) # added limit as an input parameter to fix it
  while first_num + second_num < limit # limit cannot be accessed by the method since it's not defined within the method
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# 6. What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer) # 50

p answer - 8 # 42 - 8 = 34

# 7. One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)

# Did the family's data get ransacked? Why or why not?
# REVIEW: Yes. For arrays and hashes, re-assignment within a method mutates the caller.

# What is the result of the following call?
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# returns paper

# 9. Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?
bar(foo)

# returns no. Because the value returned from the foo method will always be "yes" , and "yes" == "no" will be false.

