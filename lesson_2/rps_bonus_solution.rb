# ROCK PAPER SCISSORS LIZARD SPOCK BONUS GAME
# attempt after reviewing other people's code reviews on discussion board

MOVES = {
  'rock' => { abbreviation: 'r', beats: ['scissors', 'lizard']},
  'lizard' => { abbreviation: 'l', beats: ['spock,' 'paper']},
  'spock' => { abbreviation: 'sp', beats: ['scissors', 'rock']},
  'paper' => { abbreviation: 'p', beats: ['spock', 'rock']},
  'scissors' => { abbreviation: 'sc', beats: ['paper', 'lizard']}
}