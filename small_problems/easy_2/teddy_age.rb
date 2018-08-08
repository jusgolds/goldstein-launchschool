# build a program that randomly generates a number (Teddy's age)
# beteween 20 - 200
# then it prints out the age within a sentence

# create variable and have it equal to a random number 20-200
# print the sentence Teddy is (insert age) years old!

age = rand(20..200)

puts "What is your name?"
name = gets.chomp

if name.empty?()
  name = "Teddy"
end

puts "#{name} is #{age} today!"
