def sum_rec(arr)
  arr.empty? ? 0 : arr[0] + sum_rec(arr[1..-1])
end

puts sum_rec([3, 2, 1, 4, 5, 1])
