# PRACTICE PROBLEMS: EASY 2

# 1. In this hash of people and their age, see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?("Spot")
ages.key?("Spot") # review
ages.member?("Spot") # review

# 2. Convert the string in the following ways:

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase # review
munsters_description.capitalize
munsters_description.downcase
munsters_description.upcase

# 3. Add ages for Marilyn and Spot to the existing hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages) # review
# OR
ages["Marilyn"] = 22
ages["Spot"] = 237

# 4. See if the name "dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("dino") # can input "dino " if we want to check if its included on its own
advice.match?("dino") # LS

# 5. Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flinties = %w(Fred Barney Wilma Betty BamBam Pebbles)

# 6. How can we add the family pet "Dino" to our array:

flinties << "Dino"
# OR flinties.push("Dino")

# 7. How can we add multiple items to our array? (Dino and Hoppy)
flinties = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinties.push("Dino", "Hoppy")

# 8. Shorten the following sentence using String#slice! 

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!("Few things in life are as important as ")
# OR
advice.slice!(0, advice.index('house'))

# 9. Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"

statement.count("t")

# 10. Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

title.center(40) # center(size)
