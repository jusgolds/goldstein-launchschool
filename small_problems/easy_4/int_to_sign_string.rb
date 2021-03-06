# => Write a method that takes an integer
# => and converts it to a string representation.
# => Include "+" for positive and "-" for negative

DIGITS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
           6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def integer_to_string(int)
  int = int.digits.reverse

  num = int.map { |i| DIGITS[i] }

  string = ''
  num.each { |n| string << n }
  p string
end

def integer_to_signed_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when 1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

integer_to_signed_string(4321)
integer_to_signed_string(-570)
