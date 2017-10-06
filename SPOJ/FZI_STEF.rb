cities = gets.to_i
profits = []
cities.times { |i| profits << gets.to_i }
sum = 0
first_skipped = false
profits.each.with_index do |profit, i|
  next if (i == 0 || i == cities - 1) && profit < 0
  if (i == 0 && profit > 0 && profit + profits[1] < 0)
    first_skipped = true
    next
  end
  next if i == 1 && first_skipped

  sum += profit
end
puts sum
