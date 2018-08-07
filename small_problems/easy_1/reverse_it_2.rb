# method takes one string argument
# if word has 5 or more letters, reverses order of letters
# prints the words

# split the words in the string into indivdual words
# stick these words in an array
# loop through array and..
# if word has less than 5 letters, skip
# if word has 5 or more letters, reverse the order of the letters
# print the array


def reverse_words(string)
  string.reverse
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
