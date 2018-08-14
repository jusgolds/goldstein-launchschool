# => Rock, paper, scissors code with added bonus features

# => Add Spock and Lizard to the game
# Rock beats Scissors and Lizard
# Paper beats rock and Spock
# Scissors beats paper and lizard
# Spock beats scissors and rock
# Lizard beats Spock and paper

# Add spock and lizard to the valid choices
# Update code to add new scenarios in the same way as is already
# in order to simplify code, need to change win? and valid_choices

# change valid_choices to hash winning_combinations
# => key will be choice, and then include what it beats
# update win? so it sees if winning_combination{key} includes choice
# key is going to be the first selection
# choice is the second selection
# update the choices in the loop to reflect winning_combinations

# Update user selection so they only have to type 1/2 letter for their choice

WINNING_COMBINATIONS = { 'rock' => ['scissors', 'lizard'],
                         'paper' => ['rock', 'spock'],
                         'scissors' => ['paper', 'lizard'],
                         'spock' => ['scissors', 'rock'],
                         'lizard' => ['spock', 'paper'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_COMBINATIONS[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("The computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Pick one: #{WINNING_COMBINATIONS.keys.join(', ')}")
    choice = Kernel.gets().chomp()

    if WINNING_COMBINATIONS.keys.include?(choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = WINNING_COMBINATIONS.keys.sample

  prompt("You chose #{choice}; Computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for playing. Good bye!")
