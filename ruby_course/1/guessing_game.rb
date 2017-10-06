winning_number = rand(100)
attempts_number = 0

loop do
  puts "Enter winning_number"
  guess_number = gets.to_i
  attempts_number += 1

  if guess_number == winning_number
    puts "Brawo, zgadłeś za #{attempts_number} razem!"
    break
  elsif guess_number < winning_number
    puts "Więcej"
  else
    puts "Mniej"
  end
end
