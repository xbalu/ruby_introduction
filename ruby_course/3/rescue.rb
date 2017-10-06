def divide(val1, val2)
  val1 / val2
rescue ZeroDivisionError
  Float::INFINITY
end


puts "Enter 1st value"
number1 = gets.to_i
puts "Enter 2nd value"
number2 = gets.to_i

puts "Result = #{divide(number1, number2)}"

begin
  50 / 0
rescue
  puts "===", "Rescue alert (divided by 0)"
end

puts "Text after alert"
