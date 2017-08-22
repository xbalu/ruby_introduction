# [v1] pętla while
# def suma_liczb_parzystych(n)
#   i = 1
#   suma = 0
#   while i <= n
#     suma += i if i % 2 == 0
#     i += 1
#   end
#   suma
# end

# [v2] Range#step
# def suma_liczb_parzystych(n)
#   suma = 0
#   (2..n).step(2) { |i| suma += i}
#   suma
# end

# [v3] Enumerable#sum
# def suma_liczb_parzystych(n)
#   (1..n).sum { |i| i * (i % 2 - 1).abs}
# end

# [v4] wzór na sume liczb parzystych
def suma_liczb_parzystych(n)
  # n = n - 1 if n % 2 == 1
  # return if n <= 1
  (2 + n) / 2 * (n / 2)
end

puts "Podaj n (zakres <1..n>)"
user_input_n = gets.to_i
puts suma_liczb_parzystych(user_input_n)
