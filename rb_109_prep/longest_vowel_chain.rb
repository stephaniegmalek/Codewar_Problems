=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has 
a length of 2. Given a lowercase string that has alphabetic characters only and no 
spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

----- Problem -----
input: string 
output: integer
        - length of the longest vowel substring
rules:
- vowels are aeiou
- input string will be all lowercase alphabetic characters and no spaces

----- Examples -----
p solve("codewarriors") == 2
 o e a  io
[o, e, a, io]

p solve("suoidea") == 3
 uoi ea
[uoi, ea]

p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

----- Data Structure ----- 
strings, integers, array

----- Algorithm -----
convert letters that aren't vowels into spaces and assign the result to our string variable
divide our string variable into an array of substrings, using spaces as delimiter
iterate thru substring array and transform each value to it's size
return largest size/integer 

=end

def solve(string)
  string = string.gsub(/[^aeiou]/, ' ')
  string.split(' ').map { |substring| substring.size }.max
end

p solve("codewarriors") #== 2
p solve("suoidea") #== 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8