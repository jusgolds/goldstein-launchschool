#define a method digit_list
#create an array arr, to store the digits
#create a for loop that looks at each digit
#push each number into arr

def digit_list(num)
  arr = []
  num.each do |digit|
    arr.push(digit)
  end
  p arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
