# ----- Problem ----
# input: string of words
# output: length of shortest words
# rules:
#       Explicit Requirements:
#       - string will never be empty
#       - don't need to account of different data types

# ----- Examples -----
# find_short("bitcoin take over the world maybe who knows perhaps"), 3
# find_short("turns out random test cases are easier than writing out basic ones"), 3
# find_short("lets talk about javascript the best language"), 3
# find_short("i want to travel the world writing code one day"), 1
# find_short("Lets all go on holiday somewhere very cold"), 2

# ----- Data Structure -----
# strings, array of substrings

# ----- Algorithm -----
# SET word_count variable to empty array
# Convert input string to array of substrings 
# Iterate over each substring
#   take substring length and add to word_count array
# Return min of word_count array

# ----- Code -----
def find_short(s)
  word_count = []
  s.split.each do |substring|
    word_count << substring.length
  end
  word_count.min
end

p find_short("bitcoin take over the world maybe who knows perhaps")
p find_short("turns out random test cases are easier than writing out basic ones")
p find_short("lets talk about javascript the best language")
p find_short("i want to travel the world writing code one day")
p find_short("Lets all go on holiday somewhere very cold")