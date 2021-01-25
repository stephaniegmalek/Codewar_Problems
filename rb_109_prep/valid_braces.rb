# ----- Problem -----
# input: string of braces
# output: boolean/true or false if order of the braces is valid
# rules:
#       Explicit Requirments:
#       - all input strings will be nonempty
#       - input strings will only consist of parentheses, brackets and curly braces
#       - valid order of braces is [], (), {}
# mental model:
# - if find an opening brace, '(', '[', and '{' add 1 to count. if find/match to
#   a closing brace, ')', ']', and '}' subtract 1 from count. If count becomes less than
#   zero, return false. 

# ----- Examples -----
# "(){}[]"   =>  True
# "([{}])"   =>  True
# "(}"       =>  False
# "[(])"     =>  False
# "[({})](]" =>  False

# ----- Data Structure -----
# strings

# ----- Algorithm -----
# SET parentheses_count equal to zero
# SET sq_braces_count equal to zero
# SET curly_braces_count equal to zero
# Iterate thru each char of string
#   IF char matches '(' add 1 to parentheses_count
#   IF char matches '[' add 1 to sq_braces_count
#   If char matches '{' add 1 to curly_braces_count
#   IF char matches ')' subtract 1 to parentheses_count
#   IF char matches ']' subtract 1 to sq_braces_count
#   IF char matches '}' subtract 1 to curly_braces_count
#   break if parentheses_count < 0 or sq_braces_count < 0, or curly_braces_count < 0
# 

# ----- Code -----
def validBraces(braces)
  (braces.length / 2).times do |i|
    p braces
    braces.sub!("{}", "")
    braces.sub!("[]", "")
    braces.sub!("()", "")
  end
  braces.empty?
end

#p validBraces("(){}[]")   #=>  True
#p validBraces("([{}])")   #=>  True
#p validBraces("(}")       #=>  False
#p validBraces("[(])")     #=>  False
p validBraces("[({})](]") #=>  False