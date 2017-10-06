memory = Array.new(11, 0)

loop do
  line = gets
  break if !line
  operation = line[0]
  num1, num2 = line[2..-1].split(" ").map(&:to_i)
  if operation == "z"
    memory[num1] = num2
    next
  end

  puts case operation
  when "+" then memory[num1] + memory[num2]
  when "-" then memory[num1] - memory[num2]
  when "*" then memory[num1] * memory[num2]
  when "/" then memory[num1] / memory[num2]
  when "%" then memory[num1] % memory[num2]
  end
end
