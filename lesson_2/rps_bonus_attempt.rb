# ROCK PAPER SCISSORS LIZARD SPOCK BONUS GAME
# first solo attempt

CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]

user_count = 0
comp_count = 0

def prompt(message)
  puts(" => #{message}")
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
  (first == "rock" && second == "lizard") ||
  (first == "paper" && second == "rock") ||
  (first == "paper" && second == "spock") ||
  (first == "scissors" && second == "paper") ||
  (first == "scissors" && second == "lizard") ||
  (first == "lizard" && second == "paper") ||
  (first == "lizard" && second == "spock") ||
  (first == "spock" && second == "rock") ||
  (first == "spock" && second == "scissors")
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

prompt("Welcome to the Rock Paper Scissors Lizard Spock game!")

until user_count == 3 || comp_count == 3
  user_choice = nil

  loop do
    prompt("Choose one: #{CHOICES.join(', ')}")
    prompt("Type 'r' for rock, 'p' for paper, 's' for scissors, 'l' for lizard, or 'sp' for spock.")
    user_choice = gets.chomp.downcase
    break if %w(r p s l sp).include?(user_choice)
    puts "That's not a valid choice. Try again."
  end

  user_choice = "rock" if user_choice == "r"
  user_choice = "paper" if user_choice == "p"
  user_choice = "scissors" if user_choice == "s"
  user_choice = "lizard" if user_choice == "l"
  user_choice = "spock" if user_choice == "sp"

  comp_choice = CHOICES.sample

  prompt("You chose #{user_choice}. Computer chose #{comp_choice}.")

  display_result(user_choice, comp_choice)

  user_count += 1 if win?(user_choice, comp_choice)
  comp_count += 1 if win?(comp_choice, user_choice)
end

prompt("Computer is the grand winner!") if comp_count == 3
prompt("You are the grand winner!") if user_count == 3
prompt("FINAL SCORE")
prompt("You: #{user_count}")
prompt("Computer: #{comp_count}")
