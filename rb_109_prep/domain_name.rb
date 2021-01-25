# ----- Problem -----
# input: URL
# output: the domain name as a string
# mental model:
# - find part of string that begins after http:// or https:// or http://www. or
#   https://www., then get all the string from there until you hit a dot

# ----- Examples -----
# domain_name("http://github.com/carbonfive/raygun") == "github" 
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"
# domain_name("https://launchschool.com/forum")

# ----- Data Structure -----
# strings, regex

# ----- Algorithm -----
# Replace the https etc with ""
# split string on dot
# return element at 0 index

# ----- Code -----
def domain_name(url)
  url = url.gsub(/(https?:\/\/w?w?w?\.?|www.)/, "").split(".")
  url[0]
end

p domain_name("http://github.com/carbonfive/raygun")
p domain_name("http://www.zombie-bites.com")
p domain_name("https://www.cnet.com")
p domain_name("https://launchschool.com/forum")
p domain_name("www.xakep.ru")
p domain_name("http://google.com")
p domain_name("http://google.co.jp")
p domain_name("https://youtube.com")