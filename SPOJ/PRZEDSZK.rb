def nww(num1, num2)
  num1 * num2 / gcd(num1, num2)
end

def gcd(num1, num2)
  while num2 != 0
    num1, num2 = num2, num1 % num2
  end
  num1
end

gets.to_i.times do
  nums = gets.split(" ").map(&:to_i)
  puts nww(nums[0], nums[1])
end
