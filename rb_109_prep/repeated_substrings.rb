=begin
For a given nonempty string s find a minimum substring t and the maximum 
number k, such that the entire string s is equal to t repeated k times. 
The input string consists of lowercase latin letters. Your function should return 
an array [t, k]

Example #1:
for string s = "ababab"
the answer is = ["ab", 3]

Example #2:
for string s = "abcde"
the answer is = ['abcde', 1]
because for this string "abcde" the minimum substring t, such that s is t repeated 
k times, is itself.

----- Problem -----
input: string 
output: array
        - first element is a substring of string 
        - second element is a integer -> represents the number of times the substring
          (first element) can be repeated to make up the input string
rules:
- input is always lowercase letters

----- Examples -----
p repeated_substrings("ababab") == ["ab", 3]
'a', 'ab', 'aba', 'abab', 'ababa', 'ababab'
'a' -> bbb 
'ab' -> ' '
'aba' -> 'bab'
'abab' -> 'ab'
'ababa' -> 'b'
'ababab' -> ' '

p repeated_substrings("abcde") == ["abcde", 1]
p repeated_substrings("abcabc") == ['abc', 2]
p repeated_substrings("bbbbb") == ['b', 5]

----- Data Structure -----
strings, substrings, array, integers

----- Algorithm ----- 
find possible leading substrings 
- initalize list variable to empty array
- iterate thru each index of string
  - from current index upto last index of string 
    - string[ current index to ending index]
    - add to list
- return list
initialize substring variable to empty string
initalize count variable to 0
iterate thru substrings and check how many times the substrings "divide" into the string
- remove every instance of substring from string
  - if string is empty, then substring 'divided' evenly into string
    - reassign count variable to result of number of times substring goes into string if 
      greater than previous saved count variable 
      - and reassign substring variable to current substring
return substring variable and count variable in an array
=end

def get_leading_substrings(string)
  list = []
  0.upto(string.size - 1) do |ending_idx|
    list << string[0..ending_idx]
  end
  list
end

def repeated_substrings(string)
  leading_substrings = get_leading_substrings(string)
  
  repeated = ''
  count = 0
  leading_substrings.each do |substring|
    if string.gsub(substring, '').empty?
      if string.scan(substring).size > count
        count = string.scan(substring).size
        repeated = substring
      end
    end
  end
  [repeated, count] 
end

p repeated_substrings("ababab") #== ["ab", 3]
# 'a', 'ab', 'aba', 'abab', 'ababa', 'ababab'
# 'a' -> bbb 
# 'ab' -> ' '
# 'aba' -> 'bab'
# 'abab' -> 'ab'
# 'ababa' -> 'b'
# 'ababab' -> ' '

p repeated_substrings("abcde") == ["abcde", 1]
p repeated_substrings("abcabc") == ['abc', 2]
p repeated_substrings("bbbbb") == ['b', 5]
