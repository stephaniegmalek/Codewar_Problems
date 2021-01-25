# ----- Problem -----
# input: integer that is the product of 2 fibonacci numbers
# output: array of the two consecutive fibonacci numbers and true/false
# rules:
#       Explicit Requirements:
#       - F(n)*F(n + 1) = prod 
#       - [ f(n), f(n + 1), true] or [ f(n), f(n + 1), false]
# mental model:
#       - Find f(n) and f(n+1) multiple. Is product greater than integer? If not,
#         n = n +1 and now find f(n) * f(n +1). until product is equal to or greater than

# ----- Examples -----
# productFib(714) # should return [21, 34, true], 
# productFib(800) # should return [34, 55, false],
# productFib(15) # should return [3, 5, true],
# productFib(104) # should return [8, 13, true],
# productFib(157) # should return [13, 21, false]

# ----- Data Structure -----
# integer, array, booleans

# ----- Algorithm -----
# SET n to 0
# SET product equal to return value of f(n) * f(n + 1)
# while product is equal to integer or greater than integer
#   n = n + 1

# return n, n+1, 

# ----- Code -----
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

def productFib(number)
  n = 0
  product = fibonacci(n) * fibonacci(n + 1)
  while product < number
    n += 1
    product = fibonacci(n) * fibonacci(n + 1)
  end
  if product == number
    [fibonacci(n), fibonacci(n + 1), true]
  else
    [fibonacci(n), fibonacci(n + 1), false]
  end
end

p productFib(714)
p productFib(800)
p productFib(15)
p productFib(104)
p productFib(157)
p productFib(4895)
p productFib(5895)
