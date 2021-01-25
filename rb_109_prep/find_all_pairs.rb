=begin
Find all pairs. You are given array of integers, your task will be to count all 
pairs in that array and return their count.

Array can be empty or contain only one value; in this case return 0. If there are 
more pairs of a certain number, count each pair only once. 
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)

Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

----- Problem -----
input: array
output: integer -> represents number of pairs in array

rules:
- input array can be empty or contain only 1 value -> return 0
- there can be multiple pairs of a number -> ex: [0, 0, 0, 0]
- a pair is 2 of the same 

----- Examples -----
p pairs([1, 2, 5, 6, 5, 2]) == 2
2, 2 and 5, 5 so 2 pairs

p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
2, 2, 20, 20, 6, 6, 2, 2 so 4 pairs
1 => 1, 2 => 4, 20 => 2, 6 => 2

p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
0, 0, and 0, 0 and 0, 0 so 3 pairs

p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

----- Data Structure -----
integers, arrays

----- Algorithm -----
initalize pairs_counter variable and assign it 0
initalize total_count variable and assign it new Hash with default value 0

iterate thru each element of array
- add each element to total_count hash as key
- incrememnt element's value by 1

iterate thru total_count variable and keep only key-value pairs with value equal to or greater
than 2
iterate thru total_count variable and for each key-value pair
- divide value by 2 and increment pairs_counter variable by result 

return pairs_counter

-- OR --
initalize pairs_counter variable and assign it 0
initalize elements variable and assign it the unique elements of input array

iterate thru elements array
- for each unique element, count how many times it occurs in array
  - if count greater than or equal to 2
    - divide count by 2 and incrememnt pairs_counter by result 
    
return pairs_counter
=end

def pairs(array)
  pairs_counter = 0
  total_count = Hash.new(0)
  
  array.each do |ele|
    total_count[ele] += 1
  end
  
  total_count.select! { |k,v| v >= 2 }
  
  total_count.each do |k,v|
    pairs_counter += v / 2
  end
  pairs_counter
end

# p pairs([1, 2, 5, 6, 5, 2]) #== 2
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) #== 4
# p pairs([0, 0, 0, 0, 0, 0, 0]) #== 3 
# p pairs([1000, 1000]) == 1
# p pairs([]) == 0
# p pairs([54]) == 0

# --- OR ----

def pairs_alt(array)
  pairs_count = 0
  elements = array.uniq
  
  elements.each do |ele|
    if array.count(ele) >= 2
      pairs_count += array.count(ele) / 2
    end
  end
  pairs_count
end

p pairs_alt([1, 2, 5, 6, 5, 2])
p pairs_alt([1, 2, 2, 20, 6, 20, 2, 6, 2])
p pairs_alt([])
p pairs_alt([54])
