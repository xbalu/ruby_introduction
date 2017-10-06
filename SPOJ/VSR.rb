gets.to_i.times do
  v = gets.split(" ").map(&:to_i)
  v1 = v[0]
  v2 = v[1]
  puts (2 * v1 * v2) / (v1 + v2)
end
