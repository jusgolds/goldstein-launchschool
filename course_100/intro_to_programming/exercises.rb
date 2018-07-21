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
