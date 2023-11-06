# ROCK PAPER SCISSORS LIZARD SPOCK BONUS GAME

CHOICES_KEY = {
  "rock" => { abbreviation: 'r', beats: ['scissors', 'lizard'] },
  "paper" => { abbreviation: 'p', beats: ['rock', 'spock'] },
  "scissors" => { abbreviation: 's', beats: ['paper', 'lizard'] },
  "lizard" => { abbreviation: 'l', beats: ['paper', 'spock'] },
  "spock" => { abbreviation: 'sp', beats: ['rock', 'scissors'] }
}

def prompt(message)
  puts(" => #{message}")
end

def abbrev?(input)
  CHOICES_KEY.values.map { |choice| choice[:abbreviation] }.include?(input)
end

def find_key_by_abbrev(input)
  CHOICES_KEY.each { |key, value| return key if value[:abbreviation] == input }
end

def win?(first, second)
  CHOICES_KEY[first][:beats].include?(second)
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
  prompt("Welcome to the Rock Paper Scissors Lizard Spock game!")
  prompt("We will play until one of us wins 3 rounds.")

  user_count = 0
  comp_count = 0

  until user_count == 3 || comp_count == 3
    user_choice = nil

    loop do
      prompt("Choose one: #{CHOICES_KEY.keys.join(', ')}")
      prompt("Type 'r' for rock, 'p' for paper, 's' for scissors, 'l' for lizard, or 'sp' for spock.")
      user_choice = gets.chomp.downcase
      break if abbrev?(user_choice)
      puts "That's not a valid choice. Try again."
    end

    user_choice = find_key_by_abbrev(user_choice)
    comp_choice = CHOICES_KEY.keys.sample

    prompt("You chose #{user_choice}. Computer chose #{comp_choice}.")

    display_result(user_choice, comp_choice)

    user_count += 1 if win?(user_choice, comp_choice)
    comp_count += 1 if win?(comp_choice, user_choice)
  end

  prompt("Computer is the grand winner!") if comp_count == 3
  prompt("You are the grand winner!") if user_count == 3

  result = <<-MSG
  FINAL SCORE
  You: #{user_count}
  Computer: #{comp_count}
  MSG

  prompt(result)

  prompt("Do you want to play again? Type 'y' for yes or 'n' for no.")
  again = gets.chomp.downcase
  break unless again.start_with?("y")
end

prompt("Thank you for playing. Goodbye!")
