#2
while TRUE
  puts "Type a word"
  word = gets.chomp
  if word == "STOP"
    break
  else
    puts word
  end
end

#3
array = [1, 2, 3, 4, 5]

array.each_with_index { |num, index| puts num, index}

#4
def countdown(start)
  if start <= 0
    puts start
  else
    puts start
    countdown(start - 1)
  end
end

puts "What number should the counter start with?"
start = gets.chomp.to_i
countdown(start)
