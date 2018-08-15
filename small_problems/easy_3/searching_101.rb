# => Write a program that solicits 6 numbers from the user
# => then prints a message that describes whether or not
# => the 6th number appears amongst the first 5 numbers.

count = 1
num = ''
arr = []

def prompt(count)
  case count
  when 1
    puts "==> Enter the 1st number:"
  when 2
    puts "==> Enter the 2nd number:"
  when 3
    puts "==> Enter the 3rd number:"
  when 4
    puts "==> Enter the 4th number:"
  when 5
    puts "==> Enter the 5th number:"
  end
end

loop do
  prompt(count)
  num = gets.chomp.to_i
  arr.push(num)
  count += 1
  break if count > 5
end

puts "==> Enter the last number:"
num = gets.chomp.to_i

if arr.include?(num)
  puts "The number #{num} appears in #{arr}."
else
  puts "The number #{num} does not appear in #{arr}."
end
