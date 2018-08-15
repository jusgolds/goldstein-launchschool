# => Write a program that will ask a user for an input of a word
# => or multiple words and give back the number of characters
# => Spaces should not be counted as a character

# prompt the user to add a word or words
# store that string in var "words"
# get rid of any spaces
# iterate through string
# for each character, +=1 to var "count"
# print number of characters in string

count = 0

print "Please write word or multiple words: "
words = gets.chomp

word = words.delete(' ')

word.each_char { count += 1 }

puts "There are #{count} characters in \"#{words}\""
