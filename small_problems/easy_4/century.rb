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

def century(year)
  if year % 100 != 0
    century = year / 100 + 1
  else
    century = year / 100
  end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
