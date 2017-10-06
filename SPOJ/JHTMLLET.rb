loop do
  line = gets
  break if !line
  big = false
  line.each_char.with_index do |char, i|
    if char == "<"
      big = true
      next
    elsif char == ">"
      big = false
      next
    end
    next if !big
    line[i] = char.upcase
  end
  puts line
  # puts line.chomp.gsub(/[<]\/?[0-9a-zA-Z\s]+[>]/) { |m| m.upcase }
end
