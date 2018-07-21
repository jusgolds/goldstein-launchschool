#1
puts "(1)"
puts ""

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each { |num| puts num }

#2
puts ""
puts "(2)"
puts ""

numbers.each { |num| puts num if num > 5 }

#3
puts ""
puts "(3)"
puts ""

odd = numbers.select do |num|
  if num.odd? == true
    puts num
  end
end

#4
puts ""
puts "(4)"
puts ""

numbers.push(11)
numbers.unshift(0)

p numbers

#5
puts ""
puts "(5)"
puts ""

numbers.pop
numbers.push(3)

p numbers

#6
puts ""
puts "(6)"
puts ""

numbers.uniq

p numbers

#8
puts ""
puts "(8)"
puts ""

hash_new = {name: "Justin", age: "30"}
p hash_new

hash_old = {:name => "Justin", :age => "30"}
p hash_old

#9
puts ""
puts "(9)"
puts ""

h = {a:1, b:2, c:3, d:4}

p h[:b]
h[:e] = 5
p h

h.delete_if { |k,v| v < 3.5}
p h

#12
puts ""
puts "(12)"
puts ""

contact_data = [["joe@email.com", "123 Main St", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

#13
puts ""
puts "(13)"
puts ""

puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"
