require "byebug"

def ntimes(n)
  i = 0
  while i < n
    yield i
    i += 1
  end
end

byebug
ntimes(3) { |cnt| puts "Hello #{cnt}" }
100.upto(100) { |i| puts i }
