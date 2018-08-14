# => Keeping score
# => set the score as 0:0
# this should be a hash with key(player/computer) hash(0)
# => determine if someone won or tied
# after display of chocies winner = determine winner method
# determine winner is display result without prompts
# if statment so if winner display it
# create display_winner method
# takes winner and prompts
# => tell the user the outcome
# => if someone won, update their score
# => display their score


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
    'Compter'
  end
end

def display_winner(winner)
  prompt("#{winner} won!")
end

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
  else
    prompt("It's a tie")
  end

  prompt("Do you want to play again?")
  answer = gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for playing. Good bye!")
