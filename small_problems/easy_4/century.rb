# => Write a method that takes a year as input and returns the century
# => The return value should be a string that begins with
# => the century number
# => and ends with st, nd, rd, or th as appropriate for that number.

# => iteration 1: return the century # only
# def method century(year)
# if year % 100 != 0
# century = year / 100 + 1
# else
# century = year / 100

def century_year(year)
  if year % 100 != 0
    century = year / 100 + 1
  else
    century = year / 100
  end
end
