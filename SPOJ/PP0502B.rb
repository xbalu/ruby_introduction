gets.to_i.times do
  nums = gets.split(" ").map(&:to_i)
  puts nums[1..-1].reverse.join(" ")
end
