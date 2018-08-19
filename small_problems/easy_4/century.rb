# => Write a method that takes a year as input and returns the century
# => The return value should be a string that begins with the century number
# => and ends with st, nd, rd, or th as appropriate for that number.

# Iteration 1
# take the int (year) given and determine the century
# if year % 100 == 0, century is year / 100
# if year % 100 == 1 - 9, centiry is year /100 +1

def century_year(year)
  if year % 100 == 0
    century = year / 100
    puts century
  else
    century = (year / 100) + 1
    puts century
  end
end

century_year(1999)
century_year(2000)
century_year(2001)
