# ----- Problem -----
# input: array of integers
# output: sum (integer) of 2 lowest integers given
# rules:
#       Explicit Requirements:
#       - given array will have min of 4 positive integers
#       - input will only contain integers - no floats or negative integers

# ----- Examples -----
# sum_two_smallest_numbers([19, 5, 42, 2, 77]) == 7
# sum_two_smallest_numbers([10, 343445353, 3453445, 3453545353453]) == 3453455
# sum_two_smallest_numbers([5, 8, 12, 18, 22]) == 13
# sum_two_smallest_numbers([7, 15, 12, 18, 22]) == 19
# sum_two_smallest_numbers([25, 42, 71, 12, 18, 22]) == 30

# ----- Data Structure -----
# integers

# ----- Algorithm -----
# Sort numbers input array variable from smallest to largest
# Add numbers array element at index 0 to numbers array element at index 1

# ----- Code -----
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  numbers[0] + numbers[1]
end

p sum_two_smallest_numbers([19, 5, 42, 2, 77])
p sum_two_smallest_numbers([10, 343445353, 3453445, 3453545353453])
p sum_two_smallest_numbers([5, 8, 12, 18, 22])
p sum_two_smallest_numbers([7, 15, 12, 18, 22])
p sum_two_smallest_numbers([25, 42, 71, 12, 18, 22]) 