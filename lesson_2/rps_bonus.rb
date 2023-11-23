# ROCK PAPER SCISSORS LIZARD SPOCK BONUS GAME

require 'abbrev' # to use .abbrev gem

VALID_CHOICES = %w(rock paper scissors lizard spock).abbrev
# creates a hash with all possible abbreviations linked to each value

MOVES = {
  'rock' => %w[lizard scissors],
  'paper' => %w[rock spock],
  'scissors' => %w[paper lizard],
  'lizard' => %w[paper spock],
  'spock' => %w[rock scissors]
}.freeze # prevents changes from being made

# METHOD DEFINITIONS

def clear_screen
  Gem.win_platform? ? (system "cls") : (system "clear")
  # clears platform appropriately based on system
end

def prompt(message)
  puts(" => #{message}")
end

def display_welcome_message
  clear_screen
  prompt("Welcome to the Rock Paper Scissors Lizard Spock game!")
  prompt("We will play until one of us wins 3 rounds.")
end

def display_instructions
  puts <<-MSG
  Here are the instructions:
  => Rock crushes scissors and crushes lizard.
  => Paper covers rock and disproves Spock.
  => Scissors cuts paper and decapitates lizard.
  => Lizard eats paper and poisons Spock.
  => Spock vaporizes rock and smashes scissors.
MSG
end

def computer_choice
  MOVES.keys.sample
end

def valid_move?(input)
  VALID_CHOICES.include?(input)
end

def display_scissors_or_spock
  prompt("Invalid choice. Type 'sc' for scissors or 'sp' for spock.")
end

def display_invalid_input
  prompt("Invalid choice. Try again.")
end

def get_user_choice
  user_choice = ''
  loop do
    prompt("Choose one: #{MOVES.keys.join(', ')}")
    prompt("('r', 'p', 'sc', 'l', or 'sp')")
    user_choice = gets.chomp.downcase

    break if valid_move?(user_choice)

    user_choice == "s" ? display_scissors_or_spock : display_invalid_input
  end
  VALID_CHOICES[user_choice]
end

def display_choices(user, computer)
  prompt("You chose #{user}. Computer chose #{computer}.")
end

def display_result(user_choice, computer_choice)
  if user_choice == computer_choice
    prompt("It's a tie!")
  elsif MOVES[user_choice].include?(computer_choice)
    prompt("You win!")
  else
    prompt("Computer wins!")
  end
end

def update_scores(user_choice, computer_choice, user_score, computer_score)
  if user_choice == computer_choice
    # do nothing
  elsif MOVES[user_choice].include?(computer_choice)
    user_score += 1
  else
    computer_score += 1
  end
  [user_score, computer_score]
end

def display_scores(user_score, computer_score)
  prompt("You have: #{user_score}  |  Computer has: #{computer_score}")
end

def display_final_winner(user_score, computer_score)
  prompt("Game over! The final score is:")
  prompt("You: #{user_score} | Computer: #{computer_score}")
  prompt(user_score == 3 ? "YOU WIN!" : "COMPUTER WINS!")
end

def play_again?
  prompt("Do you want to play again?")
  gets.chomp.downcase.start_with?("y")
end

def display_goodbye
  prompt("Thank you for playing! Goodbye.")
end

# MAIN LOOP
loop do
  display_welcome_message
  display_instructions

  user_score = 0
  computer_score = 0

  sleep(5)

  loop do
    user_move = get_user_choice
    computer_move = computer_choice

    clear_screen

    display_choices(user_move, computer_move)
    sleep(1)
    display_result(user_move, computer_move)
    user_score, computer_score = update_scores(user_move, computer_move, user_score, computer_score)
    # assigns updated scores to local score variables. Without the explicit assignment here, scores would stay at 0.
    display_scores(user_score, computer_score)

    break if computer_score == 3 || user_score == 3
  end

  clear_screen
  display_final_winner(user_score, computer_score)
  break unless play_again?
end

display_goodbye
