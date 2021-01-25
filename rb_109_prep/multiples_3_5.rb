# ----- Problem -----
# input: number
# output: sum of multiples of 3 or 5
# rules:
#       Explicit Requirements:
#       - go from 1 to number not including the number
#       - if a number is a multiple of 3 and 5 count only once
# mental model:
# - Go thru numbers 1 to input. If number is multiple of 3 or 5, add to array. 
#   Find sum of array

# ----- Examples -----
# solution(10) == 23
# solution(20) == 78
# solution(200) == 9168
# solution(9) == 14

# ----- Data Structure -----
# integers, arrays

# ----- Algorithm -----
# SET sum variable to empty array
# From 1 upto input do
#   IF num modulo 3 is zero
#     Add to sum array variable
#   IF num modulo 5 is zero
#     Add to sum array variable
# Get rid of duplicate values in sum array
# Add all elements of sum array

# ----- Code -----
def solution(number)
  return 0 if number == 0
  sum = []
  1.upto(number-1) do |num|
    if num % 3 == 0
      sum << num
    elsif num % 5 == 0
      sum << num
    end
  end
  sum.uniq.reduce(:+)
end

p solution(10) #== 23
p solution(20) #== 78
p solution(200) #== 9168
p solution(9) #== 14
p solution(0)