loop do
  line = gets
  break if !line

  nums = line.split(" ").map(&:to_i)
  max_array = nums[1..-1].uniq.sort.reverse
  result = max_array[nums[0] - 1]

  puts(!result.nil? ? result : "-")
end
