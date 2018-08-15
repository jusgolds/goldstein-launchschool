# => Write a program that solicits 6 numbers from the user
# => then prints a message that describes whether or not
# => the 6th number appears amongst the first 5 numbers.

# first iteration
# create a count variable
# create method to prompt user to add a number
# start loop
# when user types number, change the string to in
# add this int to an arr
# add 1 to count
# after 6, put the array

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
  break if count > 6
end

p arr
