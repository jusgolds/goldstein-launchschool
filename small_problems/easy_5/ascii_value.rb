# => Write a method that determines and returns
# => the ASCII string value of a string that is passed in as an argument

def ascii_value(str)
  value = 0
  str.each_char { |c| value += c.ord }
  p value
end

ascii_value('Four score')
ascii_value('Launch School')
ascii_value('a')
ascii_value('')
