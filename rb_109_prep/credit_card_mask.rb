# ----- Problem -----
# input: a string
# output: input string masked by '#' expect for last 4 characters
# rules:
#       Implicit Requirements:
#       - spaces count as a characters
#       - non-alph counts as character

# ----- Examples -----
# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'
# maskify('1')                # should return '1'
# maskify('')                 # should return ''

# "What was the name of your first pet?"
# maskify('Skippy')                                   # should return '##ippy'
# maskify('Nananananananananananananananana Batman!') # should return '####################################man!'

# ----- Data Structure -----
# strings

# ----- Algorithm -----
# SET masked_part variable equal to input string from index 0 to -4
# SET last variable equal to input string from index -4...-1
# Convert masked_part variable to array 
# Iterate thru masked_part array
#   - Change each char into '#'
# Convert masked_part back to string via join
# Add masked_part to last variable

# ----- Code -----
def maskify(cc)
  return cc if cc.length <= 4
  masked = cc[0...-4]
  last = cc[-4..-1]
  new = masked.chars.map do |char|
    char = '#'
  end
  new.join('') + last
end

p maskify('4556364607935616')
p maskify('64607935616')      # should return '#######5616'
p maskify('1')                # should return '1'
p maskify('') 

p maskify('Skippy')                                   # should return '##ippy'
p maskify('Nananananananananananananananana Batman!')