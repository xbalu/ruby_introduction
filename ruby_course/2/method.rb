def print_x_lines(lines)
  return false if lines <= 0

  for i in 1..lines
    string = ""
    for j in 1..9
      string += rand(10).to_s
    end

    puts "[" + string + "]"
  end

  return true
end

def print_username(username)
  return "Hello, #{username}."
end

Person = {:name => "John"}

puts print_username(Person[:name])
puts "Enter number of lines"
lines_number = gets.chomp.to_i
puts "Invalid 'lines' parameter" if !print_x_lines(lines_number)
