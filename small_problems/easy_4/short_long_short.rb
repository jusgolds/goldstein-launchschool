# => Write a method that takes two strings as arguments
# => determines the longest of the two strings
# => and then returns the result of concatenating
# => the shorter string, the longer string, and the shorter string once again
# => You may assume that the strings are of different lengths.

# def method short_long_short(str, str2)
# if string 1 is long than string 2
# => concat 2-1-2
# if string 2 is longer than 1
# => concat 1-2-1

def short_long_short(str, str2)
  result = ''
  if str.length > str2.length
    result.concat(str2, str, str2)
  else
    result.concat(str, str2, str)
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
