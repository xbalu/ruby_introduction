words = []
gets.to_i.times { words << gets.chomp }
text = words.join("")

['a'..'z', 'A'..'Z'].flat_map(&:to_a).each do |char|
  puts "#{char} #{text.count(char)}" if text.include?(char)
end
