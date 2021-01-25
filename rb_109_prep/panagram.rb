=begin
A pangram is a sentence that contains every single letter of the alphabet at least 
once. For example, the sentence "The quick brown fox jumps over the lazy dog" is 
a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, 
False if not. Ignore numbers and punctuation.

----- Problem -----
input: string -> sentence
output: boolean -> true if string is a pangram, false if not
rules:
- pangram is a sentence that contains every since letter of the alphabet at least
  once
- case is irrelevant
- ignore numbers and punctuation

----- Examples -----
p panagram?("The quick brown fox jumps over the lazy dog.") == true
a b c d e f g h i j k l m n o p q r s t u v w x y z 

p panagram?("This is not a pangram.") == false
a g 

----- Data Structure -----
strings, array 

----- Algorithm -----
initialize alpha variable and assign it array containing 26 strings for each lowercase 
letter of alphabet

iterate thru each letter of alphabet
- check if each letter of alphabet is included in string
  - if ever false, return false

return true
=end

ALPHABET = ('a'..'z').to_a

def panagram?(string)
  ALPHABET.each do |letter|
    return false unless string.include?(letter)
  end
  true
end

p panagram?("The quick brown fox jumps over the lazy dog.") #== true
p panagram?("This is not a pangram.") #== false
