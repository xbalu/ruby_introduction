def bubble_sort(array)
  (0..(array.length - 2)).each do |i|
    (0..(array.length - 2 - i)).each do |j|
        array[j], array[j + 1] = array[j + 1], array[j] if (array[j] > array[j + 1])
    end
  end
  array
end

if ARGV.length == 0
  puts "Usage: ruby #{$0} *elements"
  exit(0)
else
  array = ARGV.map(&:to_i)
  result_array = bubble_sort(array)
  print "#{result_array.join(" ")}\n"
end
