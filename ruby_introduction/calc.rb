Array_symbols = ["+", "-", "*", "/"]

def print_usermenu
  puts "Choose operation:"
  puts " 1. Add numbers", " 2. Subtract numbers", " 3. Multiply numbers", " 4. Divide numbers", " 5. Quit"
end

def user_choice
  puts "What is your choice?: "
  gets.to_i
end

def exit_trigger
  puts "Bye, bye!"
  exit(0)
end

def execute_operation(operation)
  puts "Enter first number:"
  val1 = gets.to_i
  puts "Enter second number:"
  val2 = gets.to_i
  result = 0

  case operation
  when 1
    result = val1 + val2
  when 2
    result = val1 - val2
  when 3
    result = val1 * val2
  when 4
    begin
      result = val1 / val2
    rescue ZeroDivisionError
      puts "!! Error !! You cannot divide by 0\n\n"
      return
    end
  end

  puts "==> #{val1} #{Array_symbols[operation - 1]} #{val2} = #{result}\n\n"
end

loop do
  print_usermenu
  operation = user_choice
  exit_trigger if operation == 5
  execute_operation(operation)
end
