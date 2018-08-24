# => Write a method that takes a positive integer or zero
# => and converts it to a string representation.

# create a hash that has all of the integers to chars
# create method
# convert int to .digits.reverse
# string = ''
# num.each concat to string

DIGITS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
           6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def integer_to_string(int)
  int = int.digits.reverse

  num = int.map { |i| DIGITS[i] }

  string = ''
  num.each { |n| string << n }
  p string
end

integer_to_string(4321)
integer_to_string(0)
integer_to_string(5000)
