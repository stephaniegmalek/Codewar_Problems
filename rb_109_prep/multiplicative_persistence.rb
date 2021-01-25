=begin
Write a function, persistence, that takes in a positive parameter num and 
returns its multiplicative persistence, which is the number of times you 
must multiply the digits in num until you reach a single digit.

For example:
persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number

----- Problem -----
input: integer
output: integer
        - multiplicative persistence: number of times you must multiple the digits
          in the number until you reach a single digit
rules:
- argument positive number

----- Example -----
p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
2 * 5 = 10 
1 * 0 = 0

p persistence(999) == 4

----- Data Structure -----
integers, array

----- Algorithm -----
initialize counter variable and assign it 0
repeat until num is 1 digit
- increment counter variable by 1
- initialize digits variable and assign it an array of the digits of the num 
  - convert num to string
  - convert string to array of characters
  - transform each character to an integer
- reassign number variable to result of multiplying all numbers together
- check if product is 1 digit (if less than 10)
return counter
=end

def persistence(number)
  return 0 if number < 10
  counter = 0
  loop do
    counter += 1
    digits = number.to_s.chars.map(&:to_i)
    number = digits.reduce(:*)
    # puts "counter is now #{counter} digits is #{digits} and number is #{number}"
    break if number < 10
  end
  counter
end

p persistence(39) #== 3
p persistence(4) #== 0
p persistence(25) #== 2
p persistence(999) #== 4