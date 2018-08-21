# => 1
# see if "Spot" is present

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.key?("Spot")

# => 2
# convert string in the following ways:
# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.capitalize
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase

# => 3
# add ages for Marilyn and Spot to the ages hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages

# => 4
# See if the name "Dino" is in the string

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.match("Dino")

# => 8

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))
puts advice

# => 9

statement = "The Flintstones Rock!"
puts statement.count("t")

# => 10

title = "Flintstone Family Members"
puts title.center(40)
