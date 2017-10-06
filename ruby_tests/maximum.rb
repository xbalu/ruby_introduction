def maximum(*numbers)
  max = numbers[-1]
  numbers.each { |num| max = num if num > max }
  max
end
