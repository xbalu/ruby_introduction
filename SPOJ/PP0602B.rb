gets.to_i.times do
  rows, cols = gets.split(" ").map(&:to_i)
  nums = []
  rows.times { nums << gets.split(" ").map(&:to_i) }
  result = nums.inject([]) { |a, element| a << element.dup }

  nums[0].each.with_index { |e, i| i == 0 ? result[1][0] = e : result[0][i - 1] = e }
  nums[-1].each.with_index { |e, i| i == cols - 1 ? result[-2][-1] = e : result[-1][i + 1] = e }
  (1...rows - 1).each { |i| result[i + 1][0] = nums[i][0] }
  (1...rows - 1).each { |i| result[i - 1][-1] = nums[i][-1] }

  result.each { |a| puts a.join(" ") }
end
