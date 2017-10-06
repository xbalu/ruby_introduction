def pow(num, exp = 2)
  num ** exp
end

puts pow(2)
puts pow(2, 16)

def is_13?(num)
  num == 13
end

i = 0
until is_13?(i)
  puts "#{i} is not 13 yet"
  i += 1
end
