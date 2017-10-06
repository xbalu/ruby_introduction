def find_second_highest(array)
  max = array.max
  result = array.min
  array.each { |i| result = i if i > result && i < max }
  result
end

puts find_second_highest([100, 32, 2, 17, 12, 11, 10, 0, -4, 22])
