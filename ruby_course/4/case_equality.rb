x = (rand(2) == 0 ? [] : "")

case x
when String
  puts "x is a string"
when Array
  puts "x is an array"
end
