# => Write a method that returns an Array that contains
# => every other element of an Array that is passed in as an argument
# => the values in the returned list should be those values
# => that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# def a method "oddities" with an argument arr
# create an odd elements arr in method
# create index variable
# while array.size > index
# if index.even? add to odd_elements

def oddities(arr)
  arr.each_with_index { | num, index | if index.odd? < x }
end

#p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
#p oddities(['abc', 'def']) == ['abc']
#p oddities([123]) == [123]
#p oddities([]) == []

#p oddities([1,2,3])
