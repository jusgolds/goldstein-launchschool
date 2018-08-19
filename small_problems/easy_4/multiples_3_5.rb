# => Write a method that searches for all multiples of 3 or 5
# => that lie between 1 and some other number
# => and then computes the sum of those multiples.

# def multisum(num)
# counter = 0
# arr = []
# while counter <= num
# if counter % 3 = 0 add to arr
# if counter % 5 = 0 add to arr
# total up arr

def multisum(num)
  counter = 1
  arr = []
  while counter <= num
    if counter % 3 == 0 || counter % 5 == 0
      arr << counter
    end
    counter += 1
  end
  arr.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
