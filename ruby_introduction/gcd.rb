def gcd(num1, num2)
  while num2 != 0
    num1, num2 = num2, num1 % num2
  end
  num1
end

if ARGV.length != 2
  puts "Usage: ruby gcd.rb PARAM1 PARAM2"
  exit(0)
else
  puts gcd(ARGV[0].to_i, ARGV[1].to_i)
end
