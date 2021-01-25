=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps

----- Problem -----
input: string in camel case
output: string in kebab case

rules:
- the returned string should only contain lowercase letters

----- Examples -----
p kebabize('myCamelCasedString') == 'my-camel-cased-string'
# 'my' 'Camel' 'Cased' 'String'
# 'my' 'camel' 'cased' 'string'
# 'my-camel-cased-string'

p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
# 'my' 'Camel' 'Has' '3' 'Humps'
# 

----- Data Structure -----
strings, array

----- Algorithm -----
replace any non-alpha characters with ''
iterate thru each character of string
- if char is uppercase
  - convert to lowercase and add ' ' before
rejoin the words with '-'
=end

def kebabize(string)
  str = string.gsub(/[^a-z]/i, '')
  str = str.chars.map do |char|
    if char == char.upcase
      '-' + char.downcase
    else
      char
    end
  end
  str.join
end

# p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
# p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps'

def kebabize_alt(string)
  str = string.gsub(/[^a-z]/i, '')
  str.split(/(?=[A-Z])/).join('-').downcase
end

p kebabize_alt('myCamelCasedString')
p kebabize_alt('myCamelHas3Humps')
