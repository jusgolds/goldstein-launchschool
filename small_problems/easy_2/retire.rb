# build a program that displays when the user will retire and how many years to go

# => What is your age? 30
# => At what age would you like to retire? 70

# => It's 2016. You will retire in 2056.
# => You have only 40 years of work to go!

# ask the user for their age and save that into a variable
# ask the user what age they want to retire and save that into variable
# calculate years to retirement by subtracting retirement age from current age
# add those years to current year (2018)

current_year = Time.now.year
print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

retire_year = current_year + (retire_age - age)
years_to_retire = retire_year - current_year

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_to_retire} years of work to go!"
