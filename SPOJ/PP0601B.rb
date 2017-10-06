gets.to_i.times do
  nums = gets.split(" ").map(&:to_i)
  result = (2...nums[0]).select { |e| e % nums[1] == 0 && e % nums[2] != 0 }
  puts result.join(" ")
end
