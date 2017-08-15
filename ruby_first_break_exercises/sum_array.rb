def sum_array(array)
  temp_array = array
  temp_array.delete(temp_array.max)
  temp_array.delete(temp_array.min)
  temp_array.sum
end

puts sum_array([1, 2, 3, 4])
puts sum_array([12, 4, 0, -8])
puts sum_array([12, 4])
puts sum_array([120, 7, 145, -10, -15])
