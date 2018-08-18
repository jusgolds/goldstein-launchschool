# => Write a method that returns true if its integer argument
# => is palindromic, false otherwise
# => A palindromic number reads the same forwards and backwards.

# def method palindromic_number?(int)
# new_int = int.to_s
# new_int = new_int.reverse
# int == new_int

def palindromic_number?(int)
  new_int = int.to_s
  new_int = new_int.reverse
  new_int = new_int.to_i
  int == new_int
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
