def print_object_methods(object)
  object.methods.each do |method|
    puts method
  end
  puts object.methods.size
end

line = gets.chomp
print_object_methods(eval(line))
