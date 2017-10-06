PI = 3.141592654

r, d = gets.split(" ").map(&:to_f)
puts ((r * r - (d * d) / 4) * PI).round(2)
