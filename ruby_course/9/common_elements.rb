def find_common_elements(array1, array2)
  array1 & array2
end

puts find_common_elements([1, 2, 3, 4, 5, -2, -3, 99], [3, 2, 0, 7, -2])
