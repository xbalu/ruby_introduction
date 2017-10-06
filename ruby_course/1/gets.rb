loop do
  input = gets.chomp
  puts "Length = " + input.length.to_s
  break if input.length < 3
  puts "Enter a text shorter than 3 characters"
end
