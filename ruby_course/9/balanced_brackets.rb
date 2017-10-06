def balanced_brackets?(string)
  # string.gsub!(" ", "")
  # return false if !string.length.even?
  # loop do
  #   index = string.index("()")
  #   index ? string[index..index + 1] = "" : break
  # end
  # string.length == 0 ? true : false

  cnt = 0
  string.each_char do |char|
    cnt += 1 if char == "("
    cnt -= 1 if char == ")"
  end
  cnt == 0 ? true : false
end

puts balanced_brackets?("((())()()((()())))")
puts balanced_brackets?("(()) ())")
