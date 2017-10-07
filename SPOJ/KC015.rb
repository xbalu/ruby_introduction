loop do
  line = gets
  break if !line

  data = line.split(" ")
  num1 = data[0].to_i
  num2 = data[2].to_i

  puts case data[1]
  when "=="
    num1 == num2 ? 1 : 0
  when "!="
    num1 != num2 ? 1 : 0
  when ">="
    num1 >= num2 ? 1 : 0
  when "<="
    num1 <= num2 ? 1 : 0
  end
end
