require 'matrix'

gets.to_i.times do
  coords = gets.split(" ").map(&:to_i)
  m = Matrix[[coords[0], coords[1], 1], [coords[2], coords[3], 1], [coords[4], coords[5], 1]]
  puts(m.determinant == 0 ? "TAK" : "NIE")
end
