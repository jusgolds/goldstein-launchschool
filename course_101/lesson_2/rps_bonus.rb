
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

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for playing. Good bye!")
