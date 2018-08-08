# create a simple tip calculator
# prompt for the bill amount and the tip rate
# display the tip and the total (tip included)

# => What is the bill? 200
# => What is the tip percentage? 15

# => The tip is $30.0
# => The total is $230.0

# ask for the bill and save it in a bill(pre tip) variable
# ask for a tip percentage and save it in a tip percent variable
# calculate the tip and display it
# add the tip to the pre-tip total and display that total

print "What is the bill? "
bill_pre = gets.chomp.to_f
print "What is the tip percentage? "
tip_rate = gets.chomp.to_f

tip_total = (bill_pre * (tip_rate/100)).round(2)
bill_total = (tip_total + bill_pre).round(2)

puts "The tip is $#{"%.2f" % tip_total}"
puts "The total is $#{"%.2f" % bill_total}"
