def method_with_block
  value_from_block = yield 123
  puts "Value received from block = #{value_from_block}"
end

method_with_block do |val|
  puts "Got value #{val}"
  val + 7 # w bloku używamy implicit return
end
