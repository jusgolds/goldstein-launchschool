#1

puts "What is your name?"
name = gets.chomp
puts "Hello, #{name}!"

#2

10.times do
  puts name
end

#3
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts first_name + " " + last_name
