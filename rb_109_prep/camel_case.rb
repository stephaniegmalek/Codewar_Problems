# ----- Problem -----
# input: string
# output: string formatted in Upper Camel Case
# rules:
#       Explicit Requirements:
#       - first word of output should only be capitalized if original input was
# mental model:
# - convert dash/underscores to spaces. Separate string into array of substrings
#   capitalize substrings 1 to last one. Rejoin substrings to single string

# ----- Examples -----
# to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"
# to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"
# to_camel_case("it-was-the-song-that-never-ends") # returns "itWasTheSongThatNeverEnds"

# ----- Data Structure -----
# strings, array of substrings

# ----- Algorithm -----
# replace the '-' and '_' with ' ' 
# split the string on ' '
# capitalize elements 1 to -1 
# rejoin string 

# ----- Code -----
def to_camel_case(str)
  new = str.gsub(/[-_]/, ' ').split.each_with_index do |substr, i|
    substr.capitalize! unless i == 0
  end
  new.join
end

p to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"
p to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"
p to_camel_case("it-was-the-song-that-never-ends")