WEIGHTS = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]

gets.to_i.times do
  pesel = gets.chomp.split("").map(&:to_i)
  result = pesel[0..-2].map.with_index { |e, i| e * WEIGHTS[i] }

  sum = 0
  result.each { |e| sum += e % 10 }
  sum = sum % 10
  control_digit = 10 - sum

  (sum <= 0 || control_digit != pesel[10].to_i) ? puts("N") : puts("D")
end
