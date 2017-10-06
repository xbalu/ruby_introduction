gets.to_i.times do
  persons = gets.to_i
  points = gets.split(" ").map(&:to_i)
  max = points.max
  max_times = points.count(max)
  max_times.times { points.delete(max) }
  puts Array.new(max_times, max).join(" ") + (points.size > 0 ? " #{points.sort.join(" ")}" : "")
end
