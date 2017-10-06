require "byebug"

def foo
  bar
  baz
rescue ZeroDivisionError
  puts "Zero division error"
end

def bar
  baz
end

def baz
  # puts "*************"
  # puts caller
  # puts "*************"
  1 / 0
end

byebug
foo
puts "A string"
