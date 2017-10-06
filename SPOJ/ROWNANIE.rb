loop do
  line = gets
  break if !line
  a, b, c = line.split(" ").map(&:to_f)
  delta = (b ** 2 - 4 * a * c) / 2
  puts delta > 0 ? 2 : (delta == 0 ? 1 : 0)
end
