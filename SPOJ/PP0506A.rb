gets.to_i.times do
  count = gets.to_i
  points = []
  count.times { points << gets.split(" ") }
  points.sort_by! { |a| Math.sqrt(a[1].to_i ** 2.0 + a[2].to_i ** 2.0) }
  points.each { |a| puts a.join(" ") }
  puts "" if gets == "\n"
end
