nums = []
sum = 0

loop do
  line = gets
  break if !line
  nums << line.to_i
  sum += nums[-1]
  puts sum
end
