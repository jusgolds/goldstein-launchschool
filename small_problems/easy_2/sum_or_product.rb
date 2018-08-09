# Write a program that asks the user to enter an integer greater than 0
# then asks if the user wants to determine the sum or product
# then calculate sum or product of all numbers between 1 and the entered integer.

# => >> Please enter an integer greater than 0:
# => 5
# => >> Enter 's' to compute the sum, 'p' to compute the product.
# => s
# => The sum of the integers between 1 and 5 is 15.

# ask the user to enter an integer greater than 0, store in variable
# ask user to either compute sum, or product
# if s
# while loop where sum += counter until counter = variable
# counter += 1
# if p
# same while with multiplication

counter = 1
total = 0

puts "Please enter an integer greater than 0:"
num_choice = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

while counter <= num_choice
  if choice == 's'
    total += counter
    counter += 1
  end
end
puts total
