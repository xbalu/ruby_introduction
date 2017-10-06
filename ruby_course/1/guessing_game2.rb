min = 0
max = 99
try_number = 0

loop do
  computer_guess = (min + max) / 2
  try_number += 1
  puts "Próba #{try_number}: komputer wybral liczbe #{computer_guess}. Co Ty na to?"
  user_answer = gets.chomp

  if user_answer == "ok"
    puts "Gra zakończona"
    break
  elsif user_answer == "more"
    min = computer_guess + 1
  elsif user_answer == "less"
    max = computer_guess - 1
  else
    puts "Dozwolone odpowiedzi:", "ok", "more", "less"
    try_number -= 1
  end
end
