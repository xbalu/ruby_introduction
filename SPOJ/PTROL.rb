gets.to_i.times do
  line = gets.split(" ").map(&:to_i)
  size = line[0]
  nums = line[1..-1]
  result = []

  size.times do |i|
    new_index = (i - 1) >= 0 ? (i - 1) : (i + size - 1)
    result[new_index] = nums[i]
  end

  puts result.join(" ")
end
