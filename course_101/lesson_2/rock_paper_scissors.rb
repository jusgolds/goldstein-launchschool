VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> message")
end

loop do
  prompt("Pick one: #{VALID_CHOCIES.join(", ")}")
  choice = Kernel.gets().chomp()

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That is not a valid choice.")
  end
end

# => 8:33
computer_choice = VALID_CHOICES.sample
