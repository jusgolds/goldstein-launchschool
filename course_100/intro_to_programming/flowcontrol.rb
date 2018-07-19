#2
def caps(string)
  string.upcase
end

puts "Please enter a word or phrase"
input = gets.chomp
returned_length = input.length

if returned_length > 10
  returned_value = caps(input)
  puts returned_value
else
  puts input
end


#3
puts "Please enter a number between 0 and 100"
input = gets.chomp.to_i

if input > 100
  puts "You cheated, this number is above 100"
elsif input >= 51
  puts "Your number is between 51 - 100"
elsif input >= 0
  puts "Your number is between 0 - 50"
else
  puts "Why did you pick a negative number?"
end

#5
def evaluate_num(number)
  case
  when number < 0
    puts "You can't enter a negative number!"
  when number <= 50
    puts "#{number} is between 0 and 50"
  when number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i
evaluate_num(number)
