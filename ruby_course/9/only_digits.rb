def only_digits?(string)
  string.each_char { |char| return false if char[/\d/].nil? }
  true
end

puts only_digits?("aaabcd1scas2d")
puts only_digits?("153392")
puts only_digits?("asdascas21131")
puts only_digits?("15-128.31=22")
puts only_digits?("0123400012")
