# write a method that takes one argument, an integer
# the method returns alternating 1s and 0s starting with 1
# this alternating number has a length equal to the argument

# convert num to an integer
# assign that integer to a counter variable
# create string variable for return value
# start a loop that counts down
# if .odd? add a 1/join at the end
# if .even? add a 0
# when the counter runs out, break
# print the string

def stringy(num)
  str_len = num.to_i
  counter = 2
  binary = '1'


  while counter <= str_len
    if counter.odd?
      binary << '1'
    else
      binary << '0'
    end
    counter += 1
  end
  binary
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
