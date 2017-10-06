gets.to_i.times do
  nums = []
  nums << gets.to_i

  loop do
    if nums[-1] == 1
      puts nums.size - 1
      break
    end

    nums.push((nums[-1] % 2 == 0) ? (nums[-1] / 2) : (3 * nums[-1] + 1))
  end
end
