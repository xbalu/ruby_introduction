gets.to_i.times do
  count = gets.to_i
  nums = gets.split(" ").map(&:to_i)
  result = 0
  count.times do |i|
    result += nums[i]
  end
  puts result
end
