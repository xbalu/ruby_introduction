gets.to_i.times do
  line = gets.split(" ").map(&:to_i)
  count = line[0]
  nums = line[1..-1]
  puts nums.select.with_index { |e, i| i % 2 != 0 }.join(" ") + (count > 1 ? " " : "") +
    nums.select.with_index { |e, i| i % 2 == 0 }.join(" ")
end
