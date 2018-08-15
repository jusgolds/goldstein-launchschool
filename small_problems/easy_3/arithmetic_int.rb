# => Write a program that prompts the user for two positive integers
# => and then prints the results of the following operations on ints
# => addition, subtraction, product, quotient, remainder, and power

# create prompt method for formatting
# create int1 var and ask user for number to store in it, to_i
# create int2 var and ask user for number to store in it, to_i
# print each line while solving operations

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
int1 = gets.chomp.to_i

prompt("Enter the second number:")
int2 = gets.chomp.to_i

prompt("#{int1} + #{int2} = #{int1 + int2}")

prompt("#{int1} - #{int2} = #{int1 - int2}")

prompt("#{int1} * #{int2} = #{int1 * int2}")

prompt("#{int1} / #{int2} = #{int1 / int2}")

prompt("#{int1} % #{int2} = #{int1 % int2}")

prompt("#{int1} ** #{int2} = #{int1**int2}")
