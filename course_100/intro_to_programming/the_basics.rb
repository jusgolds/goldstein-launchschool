#1
puts "Justin " + "Goldstein"
puts

#2
thousands = 4936 / 1000
puts "thousands: #{thousands}"
hundreds = 4936 % 1000 / 100
puts "hundreds: #{hundreds}"
tens = 4936 % 100 / 10
puts "tens: #{tens}"
ones = 4936 %10
puts "ones: #{ones}"
puts

#3
movies = { one: 1975,
           two: 2004,
           three: 2013,
           four: 2001,
           five: 1981}

puts movies[:one]
puts movies[:two]
puts movies[:three]
puts movies[:four]
puts movies[:five]
puts
#4
movies = [1975, 2004, 2013, 2001, 1981]

puts movies[0]
puts movies[1]
puts movies[2]
puts movies[3]
puts movies[4]
puts

#5
puts 5*4*3*2*1
puts 6*5*4*3*2*1
puts 7*6*5*4*3*2*1
puts 8*7*6*5*4*3*2*1
puts

#6
puts 1.1 * 1.1
puts 2.2 * 2.2
puts 3.3 * 3.3
