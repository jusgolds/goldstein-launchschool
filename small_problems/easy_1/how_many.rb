# Write a method that counts the number of occurances of each element
# in a given array

# Expected Output
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  counts = Hash.new(0)
  array.each { |name| counts[name] += 1 }
  counts.each { |name, count| puts "#{name} => #{count}" }
end

count_occurrences(vehicles)
