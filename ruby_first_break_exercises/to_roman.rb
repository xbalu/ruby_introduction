SYMBOLS = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI",
  7 => "VII", 8 => "VIII", 9 => "IX", 10 => "X", 20 => "XX", 30 => "XXX",
  40 => "XL", 50 => "L", 60 => "LX", 70 => "LXX", 80 => "LXXX", 90 => "XC",
  100 => "C", 200 => "CC", 300 => "CCC", 400 => "CD", 500 => "D", 600 => "DC",
  700 => "DCC", 800 => "DCCC", 900 => "CM", 1000 => "M"}

def to_roman(number)
  return if number >= 3900

  str_number = number.to_s
  units = number % 10
  ten = (str_number[-2..-1].to_i / 10) * 10
  hundred = (str_number[-3..-1].to_i / 100) * 100
  thousand = (str_number[-4..-1].to_i / 1000)

  thousand.times { print "#{SYMBOLS[1000]}" }
  print "#{SYMBOLS[hundred]}" if hundred
  print "#{SYMBOLS[ten]}" if ten
  print "#{SYMBOLS[units]}" if units
  print "\n"
end

to_roman(5)
to_roman(37)
to_roman(924)
