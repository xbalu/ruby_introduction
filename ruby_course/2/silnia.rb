def silnia(value)
  value == 0 ? 1 : value * silnia(value - 1)
end

puts silnia(gets.to_i)
