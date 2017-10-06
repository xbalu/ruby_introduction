cnt = 0
nums = []

loop do
  nums << gets.to_i
  cnt += 1 if nums.size > 1 && nums[-2] != 42 && nums[-1] == 42
  puts nums[-1]
  break if cnt == 3
end
