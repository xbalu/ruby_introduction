def map(arr)
  new_arr = []
  arr.length.times { |i| new_arr[i] = yield arr[i] }
  new_arr
end

test_arr = [1, 2, 3]
puts map(test_arr) { |elm| elm ** 3 }

# wbudowana metoda map, która robi dokładnie to samo
puts "===", test_arr.map { |elm| elm ** 3 }
