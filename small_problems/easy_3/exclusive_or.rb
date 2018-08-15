# => write a method named xor that takes two arguments
# => and returns true if exactly one of its arguments is truthy
# => false otherwise.

# create method xor? with 2 arguments
# arg1 = true or false depending on argument
# arg2 = true or false depending on argument
# if arg1 is true and arg 2 is false
# or if arg2 is true and arg1 is false
# return true
# otherwise return false

def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if arg2 && !arg1
  false
end


p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
