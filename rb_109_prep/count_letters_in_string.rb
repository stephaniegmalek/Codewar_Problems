=begin
Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter 
count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead 
of string in Ruby and 'char' instead of string in Crystal.

----- Problem -----
input: string
output: hash
        - key is letter as symbol
        - value is letter count as integer
rules:
- string will be lowercase 
- key symbol is lowercase
- sorted in alpha order?

----- Examples -----
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})

----- Data Structure -----
strings, integers, hash, symbols, array

----- Algorithm -----
initialize count_hash variable and assign new Hash with default of 0
iterate thru each letter of string
- add each letter to hash as a key
  - convert letter to symbol
  - increment value by 1
return count_hash variable 
=end

def letter_count(string)
  count_hash = Hash.new(0)
  string.chars.each do |letter|
    count_hash[letter.to_sym] += 1
  end
  count_hash
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}