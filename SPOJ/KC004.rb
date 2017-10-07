loop do
  line = gets
  break if !line
  nums = line.split(" ").map(&:to_i)
  puts nums[2..-1].count(nums[0])
end
