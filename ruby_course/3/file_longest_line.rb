File.open("/etc/hosts") do |file|
  longest_line = ""
  file.each { |line| longest_line = line if line.length > longest_line.length }
  puts "The longest line contains #{longest_line.length} chars. The line is:", longest_line
end

# File.open("/etc/hosts") do |file|
#   file.each do |line|
#     next if line[0] == "#"
#     puts line
#   end
# end

# File.open("/home/balubalu/Pulpit/Ruby/W1/d3/test.txt", "w+") do |file|
#   file.puts "Tekst wpisany poleceniem file.puts"
# end

# content = File.read("/etc/hosts")
# puts content
