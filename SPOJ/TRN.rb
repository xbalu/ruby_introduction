rows, cols = gets.split(" ").map(&:to_i)
nums = []
rows.times { |i| nums << gets.split(" ").map(&:to_i) }
result = []
rows.times do |i|
  cols.times do |b|
    result[b] ||= []
    result[b] << nums[i][b]
  end
end
result.each { |a| puts a.join(" ") }
