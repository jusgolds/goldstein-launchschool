# => Write a method that takes a String of digits
# => and returns the appropriate number as an integer
# => The String may have a leading + or - sign
# => if the first character is a +
# => your method should return a positive number
# => if it is a -, your method should return a negative number
# => If no sign is given, you should return a positive number.


DIGITS = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
           "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0 }

def string_to_integer(str)
  digits = str.chars.map { |c| DIGITS[c] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  p value
end
