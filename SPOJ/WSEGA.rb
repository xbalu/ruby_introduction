gets.to_i.times do
  data = gets.split(" ").map(&:to_i)
  parts = data[0]
  legs = data[1..-1]
  puts parts - 1 + legs.inject(:+)
end
