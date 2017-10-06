size, shift = gets.split(" ").map(&:to_i)
nums = gets.split(" ").map(&:to_i)
result = []

size.times do |i|
  new_index = (i - shift) >= 0 ? (i - shift) : (i + size - shift)
  result[new_index] = nums[i]
end

puts result.join(" ")
