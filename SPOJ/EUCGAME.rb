def gcd(num1, num2)
  while num2 != 0
    num1, num2 = num2, num1 % num2
  end
  num1
end

gets.to_i.times do
  a, b = gets.split(" ").map(&:to_i)
  puts gcd(a, b) * 2
end
