# ----- Problem -----
# input: array of IDs
# output: smallest unused ID
# rules:
#       Explicit Requirements:
#       - given array may be unsorted and have duplicates
#       Implicit Requirements:
#       - array may be ascending or descending
# mental model: 
# Starting from zero, will increment by one and check if array includes count
# if it does, keep incrementing, if it doesn't return that count

# ----- Examples -----
# next_id([0,1,2,3,4,5,6,7,8,9,10]) # == 11
# next_id([5,4,3,2,1]) # == 0
# next_id([0,1,2,3,5]) # == 4
# next_id([0,0,0,0,0,0]) # == 1
# next_id([]) # == 0

# ----- Data Structure -----
# array

# ----- Algorithm -----
# SET counter variable to zero
# WHILE the arr includes the counter 
#   increment counter by 1
# END
# RETURN counter

# ----- Code -----
def next_id(arr)
  counter = 0
  while arr.include?(counter)
    counter += 1
  end
  counter
end

p next_id([0,1,2,3,4,5,6,7,8,9,10]) # == 11
p next_id([5,4,3,2,1]) # == 0
p next_id([0,1,2,3,5]) # == 4
p next_id([0,0,0,0,0,0]) # == 1
p next_id([]) # == 0