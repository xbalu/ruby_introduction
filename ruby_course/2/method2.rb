def line_function(arg)
  return (4 * arg - 10).to_f
end

def method_with_no_return
  if rand(2) == 0
    1
  else
    2
  end
end

#puts method_with_no_return

puts "Enter real value"
user_value = gets.chomp.to_f
puts "Line function value = #{line_function(user_value)}"
