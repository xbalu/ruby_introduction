def palindrome?(hours, mins)
  if hours == 0
    str = "#{mins}"
  else
    str = "#{hours}#{mins.to_s.size == 1 ? "#{mins.to_s.insert(0, "0")}" : mins}"
  end

  str == str.reverse
end

gets.to_i.times do
  hours, mins = gets.chomp.split(":").map(&:to_i)

  loop do
    mins += 1

    if mins == 60
      mins = 0
      hours += 1
      hours = 0 if hours == 24
    end

    break if palindrome?(hours, mins)
  end

  hours = "#{hours.to_s.insert(0, "0")}" if hours.to_s.size == 1
  mins = "#{mins.to_s.insert(0, "0")}" if mins.to_s.size == 1
  puts "#{hours}:#{mins}"
end
