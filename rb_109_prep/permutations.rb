# ----- Problem -----
# input: string
# output: array of all permutation of input string
# rules:
#       Explicit Requirements:
#       - no duplicates in return array
#       - include the original string
#       - the order of the permutations doesn't matter
# mental model:
# - Set a counter for the outer index. Set a counter for the inner index. Loop 
#   through all possible combinations of inner loop before all possible 
#   combinations of outer loop. Will find combos by taking last element and putting 
#   it to the front

# ----- Examples -----
# permutations('a'); # ['a']
# permutations('ab'); # ['ab', 'ba']
# permutations('aabb'); # ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']

# ----- Data Structure -----
# strings, arrays

# ----- Algorithm -----
# SET permutations array equal to empty array
# SET outer_idx equal to 0
# SET inner_idx equal to 0
# Loop thru each character of string
#   break if outer_idx is equal to string size
#   permutations << string[outer_idx]
#   outer_idx += 1

# RETURN permutations

# ----- Code -----
def permutations(string)
  results = []
  outer_idx = 0
  inner_idx = outer_idx + 1
  loop do
    break if outer_idx == string.size
    # puts "outer loop #{outer_idx}"
    loop do
      break if inner_idx == string.size
      results << string[outer_idx..inner_idx]
      #puts "inner loop #{inner_idx}"
      inner_idx += 1
      break
    end
    outer_idx += 1
    inner_idx = outer_idx + 1
  end
  results
end

p permutations('abc')

