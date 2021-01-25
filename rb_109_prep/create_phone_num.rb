# ----- Problem -----
# input: array of 10 integers
# output: string of input numbers in the form of a phone number
# rules: 
#       Explicit Requirements:
#       - phone number format is "(XXX) XXX-XXXX"
#       - given integers only between 0 - 9 
#       - don't forget the space after the closing parentheses
# mental model:
# - Add first three numbers from array to string after parentheses ending with
# closing parentheses and space. Add next three numbers to string ending with dash
# add last four numbers

# ----- Examples -----
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
# createPhoneNumber([3, 4, 5, 6, 7, 8, 9, 0, 1, 2]) # => returns "(345) 678-9012"

# ----- Data Structure -----
# array, string

# ----- Algorithm -----
# Iterate thru all elements of array and convert to strings
# SET first local variable to array elements 0, 1, and 2
# Add opening parentheses to beginning of first
# Add closing parentheses to end of first

# SET second local variable to array elements 3, 4, and 5
# ADD dash to end of second 

# Set third local variable to array elements 6, 7, 8 and 9

# join elements of first array
# join elements of second array
# join elements of third array 

# concate first + space + second + third

# ----- Code -----
def createPhoneNumber(array)
  "(#{array[0..2].join}) #{array[3..5].join}-#{array[6..9].join}"
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
p createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])