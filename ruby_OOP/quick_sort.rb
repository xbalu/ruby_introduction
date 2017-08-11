def build_array
  array = []
  ARGV.length.times { |i| array.push(ARGV[i].to_i) }
  array
end

def quick_sort(array, left, right)
  i = left
  j = right
  x = array[(left + right) / 2]

  begin
    while array[i] < x
      i += 1
    end

    while array[j] > x
      j -= 1
    end

    if i <= j
      array[i], array[j] = array[j], array[i]
      i += 1
      j -= 1
    end
  end while i <= j

  quick_sort(array, left, j) if (left < j)
  quick_sort(array, i, right) if (right > i)
  array
end

if ARGV.length == 0
  puts "Usage: ruby #{$0} *elements"
  exit(0)
else
  array = build_array
  result_array = quick_sort(array, 0, array.length - 1)
  print "#{result_array.join(" ")}\n"
end
