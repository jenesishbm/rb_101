# ROCK PAPER SCISSORS GAME

CHOICES = ["rock", "paper", "scissors"] # constant variable with array of valid choices

def prompt(message)
  puts(" => #{message}")
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
  (first == "paper" && second == "rock") ||
  (first == "scissors" && second == "paper")
end

def display_result(user, computer)
  if win?(user, computer)
    prompt("You won!")
  elsif win?(computer, user)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

loop do
  user_choice = nil

  prompt("Welcome to the Rock Paper Scissors game!")

  loop do
    prompt("Choose one: #{CHOICES.join(', ')}") # user makes a choice
    user_choice = gets.chomp.downcase
    break if CHOICES.include?(user_choice)
    puts "That's not a valid choice. Try again."
  end

  comp_choice = CHOICES.sample # computer makes a choice

  prompt("You chose #{user_choice}. Computer chose #{comp_choice}.") # display choices

  display_result(user_choice, comp_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase == "yes"
end
