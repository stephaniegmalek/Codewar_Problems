=begin
Return substring instance count
Complete the solution so that it returns the number of times the search_text is 
found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

----- Problem -----
input: string -> full_text and string -> search_text
output: integer -> number of times the search_text is found within the full_text

----- Examples -----
p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1

----- Data Structure -----
string, integer

----- Algorithm -----
count how many times search_text is in full_text
=end

def solution(full_text, search_text)
  full_text.count(search_text) / search_text.size
end

# p solution('abcdeb','b') #== 2
# p solution('abcdeb', 'a') #== 1
# p solution('abbc', 'bb') #== 1
# p solution('aaabbbccc', 'bbb') # == 1
# p solution('aa_bb_cc_dd_bb_e', 'bb') #== 2

def solution_alt(full_text, search_text)
  full_text.scan(search_text).size
end

p solution_alt('abcdeb', 'b')
p solution_alt('abcdeb', 'a')
p solution_alt('abbc', 'bb')