loop do
  line = gets
  break if !line
  space_first = line[0] == " "
  words = line.split(" ")
  words[0] = words[0][0].upcase + words[0][1..-1] if space_first
  puts words.map.with_index { |e, i| i != 0 ? e[0].upcase + e[1..-1] : e }.join("")
end
