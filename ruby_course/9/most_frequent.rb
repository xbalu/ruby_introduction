def find_most_frequent(array)
  hash = {}
  array.each do |i|
    hash[i].nil? ? hash[i] = 1 : hash[i] += 1
  end
  hash.key(hash.values.max)
end

puts find_most_frequent([1, 1, 2, 0, 3, 4, 5, 5, 5, 7, 9, 1])
