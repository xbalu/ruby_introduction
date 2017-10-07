loop do
  line = gets
  break if !line
  result = ""

  line.chomp.each_char do |char|
    if char[/[a-zA-Z]/]
      ord = char.ord + 3
      ord = ord - 90 + 64 if ord > 90
      char = ord.chr
    end

    result << char
  end

  puts result
end
