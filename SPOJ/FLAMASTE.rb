gets.to_i.times do
  string = gets

  string.chars.uniq.each do |char|
    loop do
      index = string.index(char * 3)
      break if index.nil?

      letters = 3
      while string[index + 3] == char
        letters += 1
        index += 1
      end

      string.sub!(char * letters, "#{char}#{letters}")
    end
  end

  puts string
end

# puts gets.gsub(/((.)\2{2,})/) { $2 + $1.size.to_s }
