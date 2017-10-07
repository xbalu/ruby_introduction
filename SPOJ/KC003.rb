loop do
  line = gets
  break if !line
  a, b, c = line.split(" ").map(&:to_f)
  puts (a + b <= c || a + c <= b || b + c <= a) ? 0 : 1
end
