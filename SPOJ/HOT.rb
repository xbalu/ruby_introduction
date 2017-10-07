distance, count = gets.split(" ").map(&:to_i)
hotels = []
count.times { hotels << gets.split(" ").map(&:to_i) }
last_rest = 0
charge = 0

loop do
  new_hotel = hotels.select { |a| a[0] - last_rest <= 800 }.min_by { |a| a[1] }
  last_rest = new_hotel[0]
  charge += new_hotel[1]
  hotels.delete(new_hotel)

  break if last_rest + 800 >= distance
end

puts charge
