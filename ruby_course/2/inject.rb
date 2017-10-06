str = ["a", "b", "c", "d", "e"].inject("") do |accum, elem|
  accum + elem
end

puts str

val = [1, 2, 3].inject(1) do |accum, elem|
  accum + elem
end

puts val
