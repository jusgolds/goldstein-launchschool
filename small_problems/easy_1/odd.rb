#Define method is_odd?
#Take num and "% 2"
#If =1 "true"
#If =0 "false"


def is_odd?(num)
  if num % 2 == 1
    true
  else
    false
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# after-thoughts
# can eliminate the else and the "true" and "false"
# can do this because ruby will return it automatically
