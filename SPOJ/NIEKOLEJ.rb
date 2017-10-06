case n = gets.to_i
when 0 then puts "0"
when 1, 2 then puts "NIE"
else
  puts [(1..n).step(2), (0..n).step(2)].flat_map(&:to_a).join(" ")
end
