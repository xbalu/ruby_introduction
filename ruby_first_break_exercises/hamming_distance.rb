def hamming_distance(str1, str2)
  return nil if str1.length != str2.length

  distance = 0
  str1.length.times { |i| distance += 1 if str1[i] != str2[i] }
  distance
end

puts hamming_distance('1234', '1235')
puts hamming_distance('GAGCCT', 'CATCGT')
puts hamming_distance('1234', '12345')
puts hamming_distance('123', 'foobar')
