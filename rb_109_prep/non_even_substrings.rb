=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.
solve("1341") = 7.
all possible substrings: 1, 13, 134, 1341, 3, 34, 341, 4, 41, 1
odd substrings: 1, 13, 1341, 3, 341, 41, 1 

----- Problem -----
input: string of integers
output: integer -> the number of odd numbered substring that can be formed

rules:
- substring can be 1 character long

----- Examples -----
p solve("1341") == 7
p solve("1357") == 10
all substrings: 1, 13, 135, 1357, 3, 35, 357, 5, 57, 7
odd: 1, 13, 135, 1357, 3, 35, 357, 5, 57, 7

p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

----- Data Structure -----
strings, integers, array

----- Algorithm -----
find all possible substrings
- initialize list variable and assign empty array
- iterate thru each index of string
  - from current index up to last index
    - string[current index to ending index]
    - add to list
- return list
iterate thru each substring and convert to integer
iterate thru each substring and keep only odd numbered ones
return number of elements in array
=end

def get_substrings(string)
  list = []
  string.chars.each_index do |start_idx|
    start_idx.upto(string.size - 1) do |ending_idx|
      list << string[start_idx..ending_idx]
    end
  end
  list
end

def solve(string)
  substrings = get_substrings(string)
  substrings.map(&:to_i).select { |ele| ele.odd? }.size
end


p solve("1341") #== 7
p solve("1357") #== 10
# all substrings: 1, 13, 135, 1357, 3, 35, 357, 5, 57, 7
# odd: 1, 13, 135, 1357, 3, 35, 357, 5, 57, 7

p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28