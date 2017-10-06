random_value = rand

if random_value < 0.3
  status = :destroyed
elsif random_value < 0.6
  status = :active
else
  status = :unknown
end

case status
when :active
  puts "All is good"
when :destroyed
  puts "We lost them"
else
  puts "Unknown status"
end

puts "Podaj liczbe"

case gets.chomp.to_i
when 1..10
  puts "Podales liczbe od 1 do 10"
when 11..100
  puts "Podales liczbe od 11 do 100"
else
  puts "Podales liczbe spoza przedzialu 1-100"
end
