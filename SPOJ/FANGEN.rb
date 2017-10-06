loop do
  rank = gets.to_i
  break if rank == 0
  array = []
  size = rank.abs * 2
  size.times { |i| array[i] = "." * size }
  stars = rank.abs

  if rank > 0
    stars.times do |i|
      array[i][0, i + 1] = "*" * (i + 1)
      array[-1 - i][-1 - i, i + 1] = "*" * (i + 1)
      (i + 1).times do |j|
        array[0 + j][-1 - i] = "*"
        array[-1 - j][i] = "*"
      end
    end
  else
    stars.times do |i|
      (i + 1).times do |j|
        array[size / 2 + i][size / 2, j + 1] = "*" * (j + 1)
        array[0 + j][i] = "*"
        array[-1 - i][0, j + 1] = "*" * (j + 1)
        array[i][-1 - j, j + 1] = "*" * (j + 1)
      end
    end
  end

  array.each { |a| puts a }
  puts ""
end
