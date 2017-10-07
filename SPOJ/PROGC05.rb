loop do
  line = gets
  break if !line
  letter, sentence = line.chomp.split(" ")
  puts sentence.gsub(letter, "")
end
