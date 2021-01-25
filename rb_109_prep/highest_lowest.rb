def high_and_low(numbers)
  num_arr = numbers.split
  num_arr.map! { |num| num.to_i }
  num_arr.sort!
  nums = num_arr.last.to_s + ' ' + num_arr.first.to_s
  nums
end

p high_and_low("1 2 3 4 5")
p high_and_low("1 2 -3 4 5")
p high_and_low("1 9 3 4 -5")
p high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")