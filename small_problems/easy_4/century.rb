# => Write a method that takes a year as input and returns the century
# => The return value should be a string that begins with the century number
# => and ends with st, nd, rd, or th as appropriate for that number.

# Iteration 1
# take the int (year) given and determine the century
# if year % 100 == 0, century is year / 100
# if year % 100 == 1 - 9, centiry is year /100 +1

# Iteration 2
# create case statement to figure out suffix
# based on number
# 1st, 2nd, 3rd, 11th, 12th, 13th

def century(year)
  if year % 100 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(1100)
p century(1999)
p century(2000)
p century(2001)
