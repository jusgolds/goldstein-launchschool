# write an array that takes one argument, an array with integers
# returns the average of the numbers in the array

# create total variable = 0
# start a loop that goes through each index of the array
# for each index, add that number to the total variable
# figure out the size of the array
# divide the total / size


def average(arr)
  total = 0
  arr.select do |num|
    total += num
  end
  average = total / arr.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
