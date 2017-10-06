# biblioteka do estetycznego wyświetlania hashy
# zamiast puts używamy pp
require "pp"

def array_group_by(elmts)
  arr = Array.new(elmts) { rand(100) }
  # tworzy nowy hash, gdzie kluczami są reszty z dzielenia elementów przez 10
  # wartości kluczy to elementy odpowiadające kluczom
  arr_grouped = arr.group_by { |elm| elm % 10 }
  pp arr_grouped
  # przekształcenie wartości kluczy (nie zmienia kluczy)
  # zmienia wartości kluczy na wartość długości tablic
  arr_transformed = arr_grouped.transform_values { |elm| elm.length }
  puts "---", arr_transformed
end

array_group_by(100)

#
# jak wyglądałby ten kod gdybyśmy nie znali metod group_by i transform_values?
# napisać ten sam program bez używania tych metod
#

# zliczanie liczby cyfr jedno i dwucyfrowych
