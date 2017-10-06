gets.to_i.times do
  words = gets.split(" ")
  chars = words.map(&:size).min
  chars.times { |i| print(words[0][i] + words[1][i]) }
  print "\n"
end
