sum = 0

loop do
  line = gets

  if !line
    puts sum
    break
  end

  nums = line.split(" ").map(&:to_i)
  current_sum = nums.inject(:+)
  sum += current_sum
  puts current_sum
end
