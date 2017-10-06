File.open("/home/balubalu/Pulpit/logs.txt", "a+") do |file|
  puts "Enter a text which will be added into file logs.txt"
  file.puts gets.chomp
end
