#1

def has_lab?(string)
  if /lab/.match(string)
    puts "we have a match"
  else
    puts "not here"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

#2/4 

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
