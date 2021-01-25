# ----- Problem -----
# input: two strings
# output: boolean true or false
# rules:
#       Explicit Requirements:
#       - return true if a portion of str1 characters can be rearranged to match str2
#       - only lower case leeters wil be used (a-z)
#       - no punctuation or digits 
#       - performance needs to be considered 
# mental model:
# Check if a character in str1 matches a character in str2. If character matches
# put it in a new string. Repeat until you've gone thru all of str1. Compare new 
# string to str2 by sorting alpha. if match return true

# ----- Examples -----
# scramble('rkqodlw', 'world') ==> True
# scramble('cedewaraaossoqqyt', 'codewars') ==> True
# scramble('katas', 'steak') ==> False
# scramble('hiclckneoms', 'chicken') ==> True

# ----- Data Structure -----
# strings and booleans

# ----- Algorithm -----
# SET matching_chars local variable equal to empty string object

# Iterate through each character of str1
#   If char matches a char in str2
#     Add char to matching_chars 

# sort matching_chars and compare to sorted str2
#   If match return true
#   else false

# ----- Code -----
def scramble(str1, str2)
  
  str1.chars.each do |char|
    if str2.chars.include?(char)
      str2.sub!(char, '')
    end
  end
  str2.empty?
end

scramble('rkqodlw', 'world')
scramble('cedewaraaossoqqyt', 'codewars')
scramble('katas', 'steak')
scramble('scriptjava','javascript')
scramble('scriptingjava','javascript')