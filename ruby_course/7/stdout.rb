def write_hello(file)
  file.puts "Hello"
end

write_hello($stdout)
File.open("hello.txt", "w") do |file|
  write_hello(file)
end
