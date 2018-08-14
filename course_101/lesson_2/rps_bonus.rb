
WINNING_COMBINATIONS = { 'rock' => ['scissors', 'lizard'],
                         'paper' => ['rock', 'spock'],
                         'scissors' => ['paper', 'lizard'],
                         'spock' => ['scissors', 'rock'],
                         'lizard' => ['spock', 'paper'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def make_choice(user_choice)
  case user_choice
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'sp'
    'spock'
  when 'l'
    'lizard'
  end
end

def win?(first, second)
  WINNING_COMBINATIONS[first].include?(second)
end

def determine_winner(player, computer)
  if win?(player, computer)
    'Player'
  elsif win?(computer, player)
    'Computer'
  end
end

def display_winner(winner)
  prompt("#{winner} won!")
end

def update_score(score, winner)
  score[winner] += 1
end

def display_score(score)
  prompt("Player: #{score['Player']} | Computer: #{score['Computer']}")
end

score = { 'Player' => 0, 'Computer' => 0 }

loop do
  choice = ''
  loop do
    prompt("Pick one: #{WINNING_COMBINATIONS.keys.join(', ')}")
    prompt("Pick (r) rock, (p) paper, (sc) scissors")
    prompt("     (sp) spock, or (l) lizard")
    choice = make_choice(Kernel.gets().chomp())

    if WINNING_COMBINATIONS.keys.include?(choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = WINNING_COMBINATIONS.keys.sample

  prompt("You chose #{choice}; Computer chose #{computer_choice}")

  winner = determine_winner(choice, computer_choice)

  if winner
    display_winner(winner)
    update_score(score, winner)
  else
    prompt("It's a tie")
  end

  display_score(score)

  prompt("Do you want to play again?")
  answer = gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for playing. Good bye!")
