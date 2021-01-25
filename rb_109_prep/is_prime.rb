# ----- Problem -----
# input: integer
# output: boolean true or false if integer is prime
# rules:
#       Explicit Requirements:
#       - a prime number is a natural number greater than 1 that has no positive
#         divisors other than 1 itself
#       - input will be integer
#       - may be given negative numbers or 0 as input
# mental model:
#       - Check if number is equal to or less zero. Find square root of integer,
#         check if remainder of dividing integer by 2 to square root is 0. If they
#         are than return false

# ----- Examples -----
# is_prime(1)  /* false */
# is_prime(2)  /* true  */
# is_prime(-1) /* false */
# is_prime(37) /* true */

# ----- Data Structure -----
# integers

# ----- Algorithm -----
# IF num is less than or equal to 0
#   return false
# SET max local variable equal to the square root of num rounded to integer
# from 2 up to max 
#   IF num % n == 0
#     return false
# return true

# ----- Code -----
def is_prime(number)
  return false if number <= 1
  
  2.upto(Math.sqrt(number)) do |n|
    return false if number % n == 0
  end
  
  true
end

p is_prime(1)
p is_prime(2)
p is_prime(-1)
p is_prime(37)
puts "----"
p is_prime(4)
p is_prime(100)
p is_prime(999)
p is_prime(958297)
p is_prime(-7)
puts "-----"
p is_prime(2)
p is_prime(3)
p is_prime(5)
p is_prime(457)
p is_prime(39229)