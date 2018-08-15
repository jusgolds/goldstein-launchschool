# => Write a program that solicits 6 numbers from the user
# => then prints a message that describes whether or not
# => the 6th number appears amongst the first 5 numbers.

# second iteration
# break loop after 5 numbers
# ask user for another number
# before adding number to arr, see if arr.include?(number)
# if yes, say so
# if no, say so

count = 1
num = ''
arr = []

def prompt(message)
  puts "==> #{message}"
end

loop do
  prompt("Enter a number:")
  num = gets.chomp.to_i
  arr.push(num)
  count += 1
  break if count > 5
end

prompt("Enter a number:")
num = gets.chomp.to_i

if arr.include?(num)
  puts "The number #{num} appears in #{arr}."
else
  puts "The number #{num} does not appear in #{arr}."
end
