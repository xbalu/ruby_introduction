gets.to_i.times do
  n, k = gets.split(" ").map(&:to_i)
  puts (([k, n - k].max + 1..n).inject(:*) || 1) / ((1..[k, n - k].min).inject(:*) || 1)
end
