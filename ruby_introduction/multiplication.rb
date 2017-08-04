def print_header
  yield
  (1..10).each { |i| print "%-5d" % i }
  print "\n"
  yield
  (1..10).each { print "---- "}
  print "\n"
end

def print_table
  (1..10).each do |i|
    print "%-3d | " % i

    (1..10).each do |j|
      print "%-5d" % (i * j)
    end

    print "\n"
  end
end

print_header { 6.times { print " " } }
print_table
