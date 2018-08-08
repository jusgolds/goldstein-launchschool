# ask user for room length and width in meters
# display the area in meters and feet

# => Enter the length of the room in meters:
# => 10
# => Enter the width of the room in meters:
# => 7
# => The area of the room is 70.0 square meters (753.47 square feet).

# create variables for name, length(meters), width(meters), area(meters), area(feet)
# print a statement asking for the length in meters
# make this an int and add to the variable
# print a statement asking for the width in meters
# make this an int and add to the variable
# multiply length and width and add to area(meter)
# convert area(meter) to feet and add to area(feet)
# print both the area in meters and feet

length_meter = nil
width_meter = nil
area_meter = nil
area_feet = nil

puts "Enter the length of the room in meters:"
length_meter = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_meter = gets.chomp.to_f

area_meter = (length_meter * width_meter).round(2)
area_feet = (area_meter * 10.7639).round(2)


puts "The area of the room is #{area_meter} square meters (#{area_feet} square feet)."
