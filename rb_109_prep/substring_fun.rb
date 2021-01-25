=begin
Complete the function that takes an array of words. You must concatenate the 
nth letter from each word to construct a new word which should be returned as 
a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty 
array; and each word will have enough letters.

----- Problem -----
input: array of strings
output: string
        - word made up of one letter from each string in input array. letter used
          is determined by position in array. For example in the string at index 0
          in the array, use it's letter at position 0. In the string at index 1, 
          use the letter at position 1

rules:
- input will be only made up of strings in an array or empty array
- assume each word will have enough letters

----- Examples ----- 
p nth_char(['yoda', 'best', 'has']) == 'yes'
index 0, word yoda
-> y o d a index 0 still 

p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) 
#==  'Codewars'

----- Data Structure ----- 
strings, arrays

----- Algorithm -----
initialize new_word variable and assign empty string
iterate thru each word and its index in array
- add letter at current index from current word to new_word
return new_word
=end

def nth_char(array)
  new_word = ''
  array.each_with_index do |word, idx|
    new_word << word[idx]
  end
  new_word
end

p nth_char(['yoda', 'best', 'has']) #== 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia'])