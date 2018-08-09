# build a program that displays when the user will retire and how many years to go

# => What is your age? 30
# => At what age would you like to retire? 70

# => It's 2016. You will retire in 2056.
# => You have only 40 years of work to go!

# ask the user for their age and save that into a variable
# ask the user what age they want to retire and save that into variable
# calculate years to retirement by subtracting retirement age from current age
# add those years to current year (2018)

CURRENT_YEAR = 2018
print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

retire_year = CURRENT_YEAR + (retire_age - age)
years_to_retire = retire_year - CURRENT_YEAR

puts "It's #{CURRENT_YEAR}. You will retire in #{retire_year}."
puts "You have only #{years_to_retire} years of work to go!"
