def fibo(n)
  arr = [0, 1]
  (n - 2).times { |step| arr.push(arr[step + 1] + arr[step]) }
  n.times { |step| puts arr[step] }
end

if ARGV.length != 1
  puts "Usage: ruby fibo.rb elements_number"
  exit(0)
else
  fibo(ARGV[0].to_i)
end
