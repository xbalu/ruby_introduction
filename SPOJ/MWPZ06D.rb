gets.to_i.times do
  persons, candies = gets.split(" ").map(&:to_i)
  persons -= 1

  if persons == 0
    puts "TAK"
  elsif candies % persons == 0
    puts "NIE"
  elsif candies % persons != 0
    puts "TAK"
  end
end
