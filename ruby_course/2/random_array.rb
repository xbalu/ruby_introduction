def generate_array(n)
  random_array = []
  n.times { random_array << yield }
  random_array
end

puts generate_array(10) { rand(100) }
