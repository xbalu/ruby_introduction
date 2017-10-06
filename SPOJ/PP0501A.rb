def gcd(num1, num2)
  while num2 != 0
    num1, num2 = num2, num1 % num2
  end
  num1
end

gets.to_i.times do
  nums = gets.split(" ").map(&:to_i)
  puts gcd(nums[0], nums[1])
end
