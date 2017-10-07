loop do
  line = gets
  break if !line
  puts line.chomp.reverse
end
