def find_all(array)
  result = []
  array.each { |e| result << e if yield(e) }
  result
end

puts find_all([1, 2, 3, 4, 5]) { |e| e > 3 }
