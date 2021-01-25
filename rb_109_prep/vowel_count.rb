# ----- Problem -----
# input: string
# output: num / count of vowels in input string
# rules:
#       Explicit Requirements:
#       - input string only consists of lower case letters or spaces
#       - vowels are: a, e, i, o and u

# ----- Examples -----
# getCount('abracadabra') == 5
# getCount('mississippi') == 4
# getCount('hello') == 2

# ----- Data Structure -----
# strings, num/integer

# ----- Algorithm -----
# add 1 to count if match "aeiou"

# ----- Code -----
def getCount(inputStr)
  inputStr.chars.count { |char| char =~ /[aeiou]/ }
end

p getCount('abracadabra')
p getCount('mississippi') 
p getCount('hello')