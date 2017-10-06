def fibo(n)
  arr = [0, 1]
  (n - 2).times do |step|
    arr.push(arr[step + 1] + arr[step])
    puts arr[step]
  end
  puts arr[-2], arr[-1]
end

if ARGV.length != 1
  puts "Usage: ruby fibo.rb elements_number"
  exit(0)
else
  fibo(ARGV[0].to_i)
end
