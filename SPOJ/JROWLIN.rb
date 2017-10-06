a, b, c = gets.split(" ").map(&:to_f)

if (a == 0 && b != c)
  puts "BR"
elsif (a == 0 && b == c)
  puts "NWR"
else
  puts "%.2f" % ((c - b) / a)
end
