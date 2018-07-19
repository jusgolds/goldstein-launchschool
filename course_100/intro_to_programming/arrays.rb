#1
arr = [1, 3, 5, 7, 9, 11]
number = 4

if arr.include?(number)
  puts "Yes"
else
  puts "No"
end


#2
array = [1, 3, 5, 7, 9, 11]
new_array = []

arr.each do |n|
  new_array << n+2
end

p array
p new_array
