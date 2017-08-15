def queue_time(clients, checkouts)
  times = Array.new(checkouts, 0)
  sum_time = 0

  while clients.length > 0 || checkouts_busy(times, checkouts)
    checkouts.times do |checkout|
      times[checkout] = clients.shift if times[checkout] == 0 && clients.length > 0
      times[checkout] -= 1
    end
    sum_time += 1
  end
  sum_time
end

def checkouts_busy(times, checkouts)
  checkouts.times { |checkout| times[checkout] > 0 ? (return true) : (return false) }
end

puts queue_time([5, 3, 4], 1)
puts queue_time([10, 2, 3, 3], 2)
puts queue_time([2, 3, 10], 2)
