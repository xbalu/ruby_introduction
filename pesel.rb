def process_pesel(pesel)
  validate_pesel(pesel) { puts "Pesel #{pesel} jest nieprawidłowy." ; return }
  pesel_information(pesel)
end

def validate_pesel(pesel)
  yield if pesel.length != 11

  weight = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
  sum = 0
  10.times do |i|
    result = pesel[i].to_i * weight[i]
    result.to_s.length > 1 ? sum += result % 10 : sum += result
  end

  control_digit = 0
  sum = sum.to_s[1].to_i if sum.to_s.length > 1
  sum > 0 ? control_digit = 10 - sum : control_digit = 0

  yield if control_digit != pesel[10].to_i
  puts "Pesel #{pesel} jest prawidłowy."
end

def pesel_information(pesel)
  puts "Informacje o peselu:"
  puts " - płeć: #{identify_gender(pesel)}"
  puts " - data urodzenia: #{parse_birthdate(pesel)}"
end

def identify_gender(pesel)
  pesel[9].to_i % 2 == 0 ? "kobieta" : "mężczyzna"
end

def parse_birthdate(pesel)
  centuries = pesel[2].to_i / 2
  day = pesel[4..5]
  month = "#{(pesel[2].to_i - (2 * centuries)).to_s}#{pesel[3]}"
  year = "#{19+centuries}#{pesel[0..1]}"
  "#{day}-#{month}-#{year}"
end

if ARGV.length != 1
  puts "Usage: ruby pesel.rb PESEL"
  exit(0)
else
  process_pesel(ARGV[0].to_s)
end
