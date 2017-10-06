def array_sort(array)
  array.sort
end

arr = []
100.times do |i|
  arr << rand(10)
end

t1 = Time.now
array_sort(arr)
t2 = Time.now
puts t2 - t1, "N = #{arr.length}"
