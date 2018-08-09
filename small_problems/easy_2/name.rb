# Write a program that will ask for user's name.
# The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# => What is your name? Bob
# => Hello Bob.
# => What is your name? Bob!
# => HELLO BOB. WHY ARE WE SCREAMING?

# ask the user for their name and store that in a name variable
# run if loop
# if there is a ! at the end, print uppercase statement
# remove the ! from the end of the name before printing
# else, just print hello name

print "What is your name? "
name = gets.chomp

if name.end_with? "!"
  puts "HELLO #{name.upcase.chomp("!")}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
