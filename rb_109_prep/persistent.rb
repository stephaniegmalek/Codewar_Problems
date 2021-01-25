# ----- Problem -----
# input: positive number
# output: multiplicative persistence
# rules:
#       Explicit Requirements:
#       - multiplicative persistence is the number of times you must multiply 
#         the digits in num until you reach a single digit 
# mental model:
# separate digits and multiple together to get product, repeat until product is
# single digit while keeping track of how many times you repeat. Once you get to
# single digit return repeat number 

# ----- Examples -----
# persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                  # and 4 has only one digit

# persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                   # 1*2*6=12, and finally 1*2=2

# persistence(4)  # returns 0, because 4 is already a one-digit number

# ----- Data Structure -----
# strings, array, integers

# ----- Algorithm -----
# SET count = 0
# SET product equal to num converted to string, converted to array of substrings
#   converted to integers, multiplied together
# LOOP until product digit count is less than one 
#   REASSIGN product to product converted to string, converted to array of 
#   substrings, converted to integers, multipled together
#   increment count by 1

# PRINT count 

# ----- Code -----
def persistence(num)
  count = 0
  while num > 9
    num = num.to_s.chars.map(&:to_i).reduce(:*)
    count += 1
  end
  
  count
end

p persistence(39)
p persistence(999)
p persistence(4)