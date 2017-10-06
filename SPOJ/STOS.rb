stack = []
count = 0

loop do
  line = gets
  break if !line

  if line[0] == ?+
    num = gets.to_i
    if count < 10
      stack << num
      count += 1
      puts ":)"
    else
      puts ":("
    end
  end

  if line[0] == ?-
    if count > 0
      puts stack.pop
      count -= 1
    else
      puts ":("
    end
  end

  if line == "\n"
    stack = []
    count = 0
  end
end
