#1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
          }

immediate_family = family.select do |k, v|
  k == :sisters || k = :brothers
end

arr = immediate_family.values.flatten
p arr

#2
h1 = { a: 100, b: 200 }
h2 = { c: 300, d: 400 }

h3 = h1.merge(h2)
p h3
p h1
p h2

h1.merge!(h2)
p h1

#3
spurs = { tony_parker: 9, danny_green: 4, kawhi_leonard: 2,
          tim_duncan: 21, tiago_splitter: 22 }

spurs.each do |key, value|
  puts "#{key}"
end

spurs.each do |key, value|
  puts "#{value}"
end

spurs.each do |key, value|
  puts "#{key} wears jersey number #{value}"
end

#5
if spurs.has_value?(20)
  puts "Got it"
else
  puts "nope"
end
