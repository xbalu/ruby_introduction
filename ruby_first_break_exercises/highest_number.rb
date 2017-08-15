def highest_number(number)
  str_number = number.to_s
  result = []
  current = 0
  (1..9).each do |i|
    current = 10 - i
    while str_number.include?(current.to_s)
      result << current
      str_number[str_number.index(current.to_s)] = ""
    end
  end
  result.join("")
end

puts highest_number(132)
puts highest_number(1464)
puts highest_number(165423)
