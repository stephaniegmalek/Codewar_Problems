# ----- Problem -----
# input: string
# output: boolean
# rules:
#       Explicit Requirments:
#       - if input has same number of 'x's' and 'o's', return true
#       - is case insensitive 
#       - if no 'x' and 'o' in string, return true 

# ----- Examples -----
# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false

# ----- Data Structure -----
# strings, booleans

# ----- Algorithm -----
# downcase input string
# SET num_of_x variable to string count of "x"
# SET num_of_o variable to string count of 'o'
# IF num_of_x is equal to num_of_o
#   - RETURN True
# ELSE
#   - RETURN False

# ----- Code -----
def XO(str)
  str.downcase.count("x") == str.downcase.count("o")
end

p XO("ooxx") # => true
p XO("xooxx") # => false
p XO("ooxXm") # => true
p XO("zpzpzpp") # => true // when no 'x' and 'o' is present should return true
p XO("zzoo") # => false
puts ""
p XO('xo') # => true
p XO('XO') # => true
p XO('xo0') # => true
p XO('xxxoo') # => false
p XO('xxOo') # => true 