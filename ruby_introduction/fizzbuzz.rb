def print_numbers(end_number)
  (1..end_number).each do |i|
  print "Fizz" if i % 3 == 0
  print "Buzz" if i % 5 == 0
  print i if (i % 3 != 0) && (i % 5 != 0)
  print "\n"
  end
end

print_numbers(100)
