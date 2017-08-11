include Math

def sieve_of_eratosthenes(min, max)
  min = 2 if min < 2
  array = Array.new
  (min..max).each { |value| array.push(value) }

  (min..Math.sqrt(max).to_i).each do |value|
    j = 0
    current = value ** 2

    while current <= max
      array.delete(current)
      j += 1
      current = (value ** 2) + (j * value)
    end
  end

  array
end

if ARGV.length != 2
  puts "Usage: ruby #{$0} a b"
  exit(0)
else
  prime_numbers = sieve_of_eratosthenes(ARGV[0].to_i, ARGV[1].to_i)
  print "Prime numbers: #{prime_numbers.join(", ")}\n"
end
