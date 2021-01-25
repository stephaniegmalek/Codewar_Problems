# ----- Problem -----
# input: array of numbers
# output: first element of an array that is not consecutive
# rules:
#       Explicit Requirements:
#       - a non consecutive number is a number that is not exactly 1 larger than
#       the previous element of the array.
#      - if the whole array is consecutive then return nil
# mental model:
# check the difference between second element and first element, if greater than 1
# return it. else check difference between third element and second element 

# ----- Examples -----
# first_non_consecutive([1,2,3,4,6,7,8]) # == 6
# first_non_consecutive([1,2,3,4,5,6,7,8]) # == nil
# first_non_consecutive([4,6,7,8,9,11]) # == 6
# first_non_consecutive([4,5,6,7,8,9,11]) # == 11
# first_non_consecutive([31,32]) # == nil
# first_non_consecutive([-3,-2,0,1]) # == 0
# first_non_consecutive([-5,-4,-3,-1]) # == -1

# ----- Data Structure -----
# array, integers

# ----- Algorithm -----
# SET counter variable equal to zero
# LOOP 
#   SET element1 equal to array element at index counter
#   SET element2 equal to array element at index counter + 1
#   IF the difference of element2 from element1 is NOT zero
#     RETURN element2
#   BREAK if counter is same as number of array elements
# RETURN nil

# ----- Code -----
#def first_non_consecutive(arr)
#  counter = 0
#  loop do
#    break if counter == arr.length - 1
#    return arr[counter + 1] if arr[counter + 1] - arr[counter] != 1
#    counter += 1
#  end
#end

def first_non_consecutive(arr)
  previous = arr.shift
  arr.each do |ele|
    if ele - previous != 1
      return ele
    else
      previous = ele
    end
  end
  nil
end

p first_non_consecutive([1,2,3,4,6,7,8]) # == 6
p first_non_consecutive([1,2,3,4,5,6,7,8])
p first_non_consecutive([4,6,7,8,9,11]) # == 6
p first_non_consecutive([4,5,6,7,8,9,11]) # == 11
p first_non_consecutive([31,32]) # == nil
p first_non_consecutive([-3,-2,0,1]) # == 0
p first_non_consecutive([-5,-4,-3,-1]) # == -1