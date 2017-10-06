loop do
  line = gets
  break if !line
  operation = line[0]
  num1, num2 = line[2..-1].split(" ").map(&:to_i)
  puts case operation
  when "+" then num1 + num2
  when "-" then num1 - num2
  when "*" then num1 * num2
  when "/" then num1 / num2
  when "%" then num1 % num2
  end
end
