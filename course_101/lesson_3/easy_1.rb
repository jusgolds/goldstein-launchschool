# => 3
# Replace the word "important" with "urgent" in string

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

puts advice

# => 5
# Programmatically determine if 42 lies between 10 and 100

if (10..100).include?(42)
  puts "yes"
else
  puts "no"
end

# => 6
# Starting with the following string print "Four score and.." in front of it

famous_words = "seven years ago..."

puts "Four score and " + famous_words

famous_words.prepend("Four score and ")

puts famous_words

# => 8
# make array un-nested

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!

# => 9
# Turn hash into array containing only Barney's name and number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney = flintstones.assoc("Barney")

p barney
