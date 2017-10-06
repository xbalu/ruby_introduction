gets.to_i.times do
  persons, boxsize = gets.split(" ")
  cookies = 0
  persons.to_i.times { |i| cookies += 86400 / gets.to_i }
  puts (cookies / boxsize.to_f).ceil
end
