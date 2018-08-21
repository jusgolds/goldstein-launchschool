# => 1
# write a one-line program that creates an output 10 times
# with the subsequent line indented 1 space to the right

10.times { |number| puts (" " * number) + "The Flintstones rock" }

# => 3

#def factors(number)
#  dividend = number
#  divisors = []
#  begin
#    divisors << number / dividend if number % dividend == 0
#    dividend -= 1
#  end until dividend == 0
#  divisors
#end

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

# => 5

def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
