def multiples(value)
  sum = 0
  (0..value).each { |i| sum += i if i % 3 == 0 || i % 5 == 0 }
  sum
end

puts multiples(10)
puts multiples(20)
