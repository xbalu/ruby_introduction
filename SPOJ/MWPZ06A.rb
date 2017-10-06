gets.to_i.times do
  x, y, z = gets.split(" ").map(&:to_f)
  result = ((x + y * (1 - z)) / (z - 1) * 12).round.abs
  puts result
end
