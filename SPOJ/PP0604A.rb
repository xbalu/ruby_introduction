gets.to_i.times do
  line = gets.split(" ").map(&:to_i)
  count = line[0]
  nums = line[1..-1]
  avg = nums.inject(:+) / count.to_f
  puts nums.map { |x| [(x.to_f - avg).abs, x] }.min[1]
end
