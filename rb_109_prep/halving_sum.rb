# ----- Problem -----
# input: positive integer
# output: sum of positive integer divided by half
# rules:
#       Explicit Requirements:
#       - All elements of the sum are results of integer divison
# mental model:
# Divide given integer in half, take result and add to new collection 
# then divide in half, repeat until result is equal to one. Add all the 
# results in the collect

# ----- Examples -----
# n + n/2 + n/4 + n/8 + ...
# 25 => 25 + 12 + 6 + 3 + 1 = 47
# 30 => 30 + 15 + 7 + 3 + 1 = 56
# 17 => 17 + 8 + 4 + 2 + 1 = 32

# ----- Data Structure -----
# array, integers

# ----- Algorithm -----
# SET results equal to empty array

# Loop while sum is not equal to one
#   SET sum equal to given integer / 2
#   Add sum to results array
#   SET integer equal to sum

# PRINT results array sum

# ----- Code -----
def halving_sum(n)
  results = [n]
  sum = 0
  loop do
    break if sum == 1
    sum = n / 2
    results << sum
    n = sum
  end
  results.sum
end



p halving_sum(25)
p halving_sum(127)
#p halving_sum(30)
#p halving_sum(17)