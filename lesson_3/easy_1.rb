# PRACTICE PROBLEMS: EASY 1

# 1. What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # => 1 2 2 3 ; uniq does not mutate numbers, need to use uniq! to do that 

=begin
2. Describe the difference between ! and ? in Ruby. 
And explain what would happen in the following scenarios:

a. what is != and where should you use it?
> != means not equal to. Often used in conditional statements

b. put ! before something, like !user_name
>> turns any object into the opposite of their boolean equivalent (not x)

c. put ! after something, like words.uniq!
> depends on the method (it's part of the method name, not ruby syntax) but commonly it turns certain methods into mutating methods (i.e. uniq!)

d. put ? before something
>>  is the ternary operator for if...else

e. put ? after something
> Completely depends on the method (it's part of the method name) 

f. put !! before something, like !!user_name
> Turn any object into their boolean equivalent. Returns true if value is not false or nil.

=end

# 3. Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

advice["important"] = "urgent"
# OR
advice.gsub!('important', 'urgent')

advice

# 4. The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # deletes the item at index 1 (in this case, 2)

numbers = [1, 2, 3, 4, 5]
numbers.delete(1) # deletes the item 1

# 5. Programmatically determine if 42 lies between 10 and 100.
(10..100).include?(42) # .. includes 100, ... excludes 100
(10..100).cover?(42) # LS solution

# 6. Show two different ways to put the expected "Four score and " in front of famous_words
famous_words = "seven years ago..."

"Four score and " + famous_words
"Four score and " << famous_words
famous_words.prepend("Four score and ") # LS solution

# 7. Make this into an un-nested array.

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

# 8. Given the hash below, create an array containing only two elements: Barney's name and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.to_a[2] # array at index 2 of flintstones.to_a
flintstones.assoc("Barney") # LS: .assoc(key) returns a 2-element Array containing that key and its value
